import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/root/controller/root_page_controller.dart';
import 'package:get/get.dart';

class RootPage extends GetView<RootPageController> {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(
          'Root Page',
        ),
      ),
    );
  }
}
