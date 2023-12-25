import 'package:flutter/material.dart';

class AppColor {
  static AppColor? _instance;
  factory AppColor() => _instance ??= AppColor._();

  AppColor._();

  static const text = Color(0XFF0F0F0F);
  static const primary = Color(0XFF673AB7);
  static const primaryVariant = Color.fromARGB(255, 135, 79, 231);
  static const secondary = Color(0XFF9E9E9E);
  static const white = Color(0XFFEEEEEE);
  static const failure = Color(0XFFD32F2F);
  static const border = Color(0XFFDFE1E6);
}
