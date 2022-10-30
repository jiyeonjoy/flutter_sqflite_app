import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/detail/controller/detail_page_controller.dart';
import 'package:get/get.dart';

class DetailPage extends GetView<DetailPageController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text(
          'Detail Page',
        ),
      ),
    );
  }
}
