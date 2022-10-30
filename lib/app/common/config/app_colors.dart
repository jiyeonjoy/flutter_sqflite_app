import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _instance = AppColors._internal();

  factory AppColors() => _instance;

  AppColors._internal();

  final Color transparent = Colors.transparent;
  final Color black = Colors.black;
  final Color white = Colors.white;
}
