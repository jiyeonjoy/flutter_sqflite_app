import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';
import 'package:flutter_jab_app/app/common/ui/edge_insets.dart';
import 'package:flutter_jab_app/app/common/ui/jnb_text_field.dart';
import 'package:flutter_jab_app/app/home/controller/home_page_controller.dart';
import 'package:flutter_jab_app/data/dto/response/search/search_image_data_dto.dart';
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
               List<SearchImageDataDto> imageList = controller.imageList;

               if (imageList.isNotEmpty) {
                 return Container(
                   width: double.infinity,
                   color: R.color.black,
                 );
               } else {
                 return Container();
               }
              }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
