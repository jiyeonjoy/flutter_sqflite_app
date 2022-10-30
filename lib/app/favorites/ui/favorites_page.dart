import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';
import 'package:flutter_jab_app/app/common/ui/edge_insets.dart';
import 'package:flutter_jab_app/app/common/ui/image_item_view.dart';
import 'package:flutter_jab_app/app/favorites/controller/favorites_page_controller.dart';
import 'package:flutter_jab_app/app/root/controller/root_page_controller.dart';
import 'package:flutter_jab_app/data/dto/common/favorite_image_data.dart';
import 'package:get/get.dart';

class FavoritesPage extends GetView<FavoritesPageController> {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: edgeInsets(
          horizontal: 16,
          vertical: 20,
        ),
        child: Obx(() {
          List<FavoriteImageData> favoriteList = RootPageController.to.favoriteList;
          if (favoriteList.isEmpty) {
            return Center(
              child: Text(
                R.string.favoriteImageEmpty,
              ),
            );
          } else {
            return ListView.builder(
              itemBuilder: (_, index) {
                return ImageItemView(
                  favoriteList[index],
                );
              },
              itemCount: favoriteList.length,
            );
          }
        }),
      ),
    );
  }
}
