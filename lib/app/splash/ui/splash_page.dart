import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/splash/controller/splash_page_controller.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashPageController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(
          'Splash Page',
        ),
      ),
    );
  }
}
