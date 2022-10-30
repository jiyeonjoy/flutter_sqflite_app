import 'package:flutter_jab_app/app/favorites/controller/favorites_page_controller.dart';
import 'package:get/get.dart';

class FavoritesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FavoritesPageController());
  }
}
