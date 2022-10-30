import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/home/controller/home_page_controller.dart';
import 'package:flutter_jab_app/data/dto/common/favorite_image_data.dart';
import 'package:flutter_jab_app/utils/db_helper.dart';
import 'package:get/get.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';

class RootPageController extends GetxController {
  static RootPageController get to => Get.find();

  RootTab currentTab = RootTab.home;

  var favoriteList = <FavoriteImageData>[].obs;
  final int maxFavoriteCount = 100;

  @override
  void onInit() {
    super.onInit();
    getSavedFavoriteList();
  }

  void changeTab(int index) {
    currentTab = RootTab.from(index);
    update();
  }

  void getSavedFavoriteList() async {
    List<FavoriteImageData> list = await DBHelper().getAllFavoriteListModels();
    if (list.isNotEmpty) {
      favoriteList.value = list;
    }
  }

  void changeFavoriteList(FavoriteImageData data) async {
    data.changeFavorite();
    HomePageController.to.tapFavorite(data);
    List<FavoriteImageData> list = List<FavoriteImageData>.from(favoriteList);
    if (!data.isFavorite) {
      int findIndex = list.indexWhere(
            (element) =>
        element.image_url == data.image_url,
      );
      if (findIndex > -1) {
        list.removeAt(findIndex);
        favoriteList.value = list;
        await DBHelper().deleteFavoriteListModel(data.image_url);
      }
    } else {
      list.insert(0, data);
      favoriteList.value = list;
      await DBHelper().createData(data);
    }
  }
}

enum RootTab {
  home(0),
  favorites(1);

  final int id;
  const RootTab(this.id);

  static RootTab from(int id) {
    for (final value in RootTab.values) {
      if (value.id == id) {
        return value;
      }
    }
    return RootTab.home;
  }
}

extension RootTabExt on RootTab {
  Widget get icon {
    switch (this) {
      case RootTab.home:
        return Icon(
          Icons.home_outlined,
          color: R.color.black.withOpacity(0.5),
          size: 24.0,
        );
      case RootTab.favorites:
        return Icon(
          Icons.star_border,
          color: R.color.black.withOpacity(0.5),
          size: 24.0,
        );
    }
  }

  Widget get selectedIcon {
    switch (this) {
      case RootTab.home:
        return Icon(
          Icons.home,
          color: R.color.black,
          size: 24.0,
        );
      case RootTab.favorites:
        return Icon(
          Icons.star,
          color: R.color.black,
          size: 24.0,
        );
    }
  }

  String get title {
    switch (this) {
      case RootTab.home:
        return R.string.home;
      case RootTab.favorites:
        return R.string.favorites;
    }
  }
}
