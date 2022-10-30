import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// ignore_for_file: non_constant_identifier_names
class AppAnimations {
  static final AppAnimations _instance = AppAnimations._internal();

  factory AppAnimations() => _instance;

  AppAnimations._internal();

  static const String _animationPath = 'assets/animations/';
}

class AppAnimation {
  final String path;

  const AppAnimation(this.path);

  LottieBuilder lottie({Key? key, double? width, double? height}) {
    return Lottie.asset(path, width: width, height: height);
  }
}
