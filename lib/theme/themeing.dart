import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/theme/colors.dart';

ThemeData themeData = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: AppColor.text,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: AppColor.text,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: AppColor.text,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      color: AppColor.text,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      color: AppColor.text,
      fontSize: 13,
      fontWeight: FontWeight.normal,
    ),
  ),
);
