import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';
import 'package:flutter_jab_app/app/common/ui/edge_insets.dart';
import 'package:flutter_jab_app/app/common/ui/image_item_view.dart';
import 'package:flutter_jab_app/app/common/ui/jnb_text_field.dart';
import 'package:flutter_jab_app/app/home/controller/home_page_controller.dart';
import 'package:flutter_jab_app/data/dto/common/favorite_image_data.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: edgeInsets(
          horizontal: 16,
          vertical: 20,
        ),
        child: Column(
          children: [
            JnbTextField(
              controller: controller.searchTextController,
              focusNode: controller.searchTextFocusNode,
              hintText: R.string.searchTextFieldHint,
              maxLines: 1,
              onSubmitted: (String text) {
                controller.searchImage(text);
              },
            ),
            Expanded(
              child: Obx(() {
                List<FavoriteImageData> imageList = controller.imageList;
                if (imageList.isNotEmpty) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      await Future.delayed(const Duration(milliseconds: 1000));
                      controller.searchImage(
                        controller.searchTextController.text,
                      );
                    },
                    child: ListView.builder(
                      itemBuilder: (_, index) {
                        if (index == imageList.length - 1) {
                          controller.loadMoreList();
                        }
                        return ImageItemView(
                          imageList[index],
                        );
                      },
                      itemCount: imageList.length,
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
