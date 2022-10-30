import 'package:flutter_jab_app/app/detail/controller/detail_page_controller.dart';
import 'package:get/get.dart';

class DetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DetailPageController());
  }
}
