import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';
import 'package:flutter_jab_app/app/common/logger.dart';
import 'package:flutter_jab_app/app/common/ui/jnb_snackbar.dart';
import 'package:flutter_jab_app/app/root/controller/root_page_controller.dart';
import 'package:flutter_jab_app/data/dto/common/favorite_image_data.dart';
import 'package:flutter_jab_app/data/dto/response/search/search_image_data_dto.dart';
import 'package:flutter_jab_app/data/dto/response/search/search_image_dto.dart';
import 'package:flutter_jab_app/data/repositories/search_api_repo_impl.dart';
import 'package:flutter_jab_app/domain/use_cases/search_api_usecase.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController get to => Get.find();

  final SearchApiUseCase searchApiUseCase =
      SearchApiUseCase(SearchApiRepositoryImpl());

  var imageList = <FavoriteImageData>[].obs;

  final TextEditingController searchTextController = TextEditingController();
  final FocusNode searchTextFocusNode = FocusNode();

  bool refreshing = false;
  bool loadMoreFlag = false;
  int pageIndex = 1; // 1 - 50
  final int maxPage = 50;
  final int pageSize = 20; // 1 - 80

  @override
  void onClose() {
    searchTextController.dispose();
    searchTextFocusNode.dispose();
    super.onClose();
  }

  void searchImage(String text) async {
    if (text.trim().isEmpty) {
      JnbSnackBar.show(R.string.searchTextFieldHint);
    } else {
      refreshing = true;
      pageIndex = 1;
      final getImageList = await searchApiUseCase.getImageList(
        text,
        page: pageIndex,
        size: pageSize,
      );
      getImageList.when(success: (SearchImageDto resp) {
        if (resp.documents?.isNotEmpty ?? false) {
          imageList.value = setImageFavorite(resp.documents ?? []);
          loadMoreFlag = !(resp.meta?.is_end ?? true) && pageIndex < maxPage;
        } else {
          imageList.value = [];
          JnbSnackBar.show(R.string.searchImageNotFound);
        }
        refreshing = false;
      }, failure: (error) {
        imageList.value = [];
        logger.d(error);
        refreshing = false;
        JnbSnackBar.show(error.toString());
      });
    }
  }

  void loadMoreList() async {
    if (refreshing || !loadMoreFlag || pageIndex == maxPage) {
      return;
    }
    refreshing = true;
    pageIndex++;
    String text = searchTextController.text;
    final getImageList = await searchApiUseCase.getImageList(
      text,
      page: pageIndex,
      size: pageSize,
    );
    getImageList.when(success: (SearchImageDto resp) {
      if (resp.documents?.isNotEmpty ?? false) {
        List<FavoriteImageData> list = List<FavoriteImageData>.from(imageList);
        list.addAll(setImageFavorite(resp.documents ?? []));
        imageList.value = list;
        loadMoreFlag = !(resp.meta?.is_end ?? true) && pageIndex < maxPage;
      }
      refreshing = false;
    }, failure: (error) {
      logger.d(error);
      refreshing = false;
      JnbSnackBar.show(error.toString());
    });
  }

  List<FavoriteImageData> setImageFavorite(List<SearchImageDataDto> images) {
    List<FavoriteImageData> list = [];
    for (SearchImageDataDto dto in images) {
      list.add(FavoriteImageData(
        datetime: dto.datetime,
        display_sitename: dto.display_sitename,
        doc_url: dto.doc_url,
        image_url: dto.image_url,
        thumbnail_url: dto.image_url,
        isFavorite: checkFavorite(dto),
      ));
    }
    return list;
  }

  bool checkFavorite(SearchImageDataDto dto) {
    bool isFavorite = false;
    List<FavoriteImageData> savedList = List<FavoriteImageData>.from(RootPageController.to.favoriteList);
    for (FavoriteImageData data in savedList) {
      if (data.image_url == dto.image_url) {
        isFavorite = true;
        break;
      }
    }
    return isFavorite;
  }

  void tapFavorite(FavoriteImageData data) {
    List<FavoriteImageData> list = List<FavoriteImageData>.from(imageList);
    int findIndex = list.indexWhere(
          (element) =>
      element.image_url == data.image_url,
    );
    if (findIndex > -1) {
      list[findIndex] = data;
      imageList.value = list;
    }
  }
}
