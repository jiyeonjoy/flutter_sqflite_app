import 'package:flutter_jab_app/app/detail/binding/detail_page_binding.dart';
import 'package:flutter_jab_app/app/detail/ui/detail_page.dart';
import 'package:flutter_jab_app/app/favorites/binding/favorites_page_binding.dart';
import 'package:flutter_jab_app/app/home/binding/home_page_binding.dart';
import 'package:flutter_jab_app/app/root/binding/root_page_binding.dart';
import 'package:flutter_jab_app/app/root/ui/root_page.dart';
import 'package:flutter_jab_app/app/splash/binding/splash_page_binding.dart';
import 'package:flutter_jab_app/app/splash/ui/splash_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.splashPage;

  static final pages = [
    GetPage(
      name: AppRoutes.splashPage,
      page: () => const SplashPage(),
      binding: SplashPageBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.rootPage,
      page: () => const RootPage(),
      bindings: [
        RootPageBinding(),
        HomePageBinding(),
        FavoritesPageBinding(),
      ],
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.detailPage,
      page: () => const DetailPage(),
      binding: DetailPageBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
