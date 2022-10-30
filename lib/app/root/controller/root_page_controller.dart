import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';

class RootPageController extends GetxController {
  static RootPageController get to => Get.find();

  RootTab currentTab = RootTab.home;

  void changeTab(int index) {
    currentTab = RootTab.from(index);
    update();
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
