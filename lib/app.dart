import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/common/app_pages.dart';
import 'package:get/get.dart';

class JobisApp extends StatefulWidget {
  const JobisApp({Key? key}) : super(key: key);

  @override
  State<JobisApp> createState() => _JobisAppState();
}

class _JobisAppState extends State<JobisApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.initialPage,
      getPages: AppPages.pages,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 200),
    );
  }
}
