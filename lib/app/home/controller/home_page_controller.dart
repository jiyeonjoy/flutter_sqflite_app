import 'package:flutter_jab_app/app/common/logger.dart';
import 'package:flutter_jab_app/data/repositories/search_api_repo_impl.dart';
import 'package:flutter_jab_app/domain/use_cases/search_api_usecase.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController get to => Get.find();

  final SearchApiUseCase searchApiUseCase =
      SearchApiUseCase(SearchApiRepositoryImpl());

  @override
  void onInit() async {
    super.onInit();
    final imageList = await searchApiUseCase.getImageList('이효리');
    imageList.when(success: (resp) {
      logger.d(resp);
    }, failure: (error) {
      logger.d(error);
    });
  }
}
