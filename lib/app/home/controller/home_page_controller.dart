import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';
import 'package:flutter_jab_app/app/common/logger.dart';
import 'package:flutter_jab_app/app/common/ui/jnb_snackbar.dart';
import 'package:flutter_jab_app/data/dto/response/search/search_image_data_dto.dart';
import 'package:flutter_jab_app/data/repositories/search_api_repo_impl.dart';
import 'package:flutter_jab_app/domain/use_cases/search_api_usecase.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController get to => Get.find();

  final SearchApiUseCase searchApiUseCase =
      SearchApiUseCase(SearchApiRepositoryImpl());

  var imageList = <SearchImageDataDto>[].obs;

  final TextEditingController searchTextController = TextEditingController();
  final FocusNode searchTextFocusNode = FocusNode();

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
      final imageList = await searchApiUseCase.getImageList(text);
      imageList.when(success: (resp) {
        logger.d(resp);
      }, failure: (error) {
        logger.d(error);
      });
    }
  }
}
