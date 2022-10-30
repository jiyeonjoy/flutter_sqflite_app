import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';
import 'package:flutter_jab_app/app/detail/controller/detail_page_controller.dart';
import 'package:get/get.dart';

class DetailPage extends GetView<DetailPageController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.color.white,
      appBar: AppBar(
        title: Text(
          controller.imageSiteName
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: CachedNetworkImage(
            imageUrl: controller.imageUrl,
          ),
        )
      )
    );
  }
}
