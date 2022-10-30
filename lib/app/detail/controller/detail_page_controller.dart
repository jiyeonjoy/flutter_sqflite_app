import 'package:flutter_jab_app/app/common/constants.dart';
import 'package:get/get.dart';

class DetailPageController extends GetxController {
  static DetailPageController get to => Get.find();

  String imageUrl = '';
  String imageSiteName = '';

  @override
  void onInit() {
    super.onInit();
    imageUrl = Get.arguments?[AppConstants.IMAGE_URL] ?? '';
    imageSiteName = Get.arguments?[AppConstants.IMAGE_SITE_NAME] ?? '';
  }
}
