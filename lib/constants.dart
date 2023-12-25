import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/theme/colors.dart';

final kTextField = InputDecoration(
  helperStyle: const TextStyle(
    color: AppColor.text,
  ),
  floatingLabelStyle: const TextStyle(
    color: AppColor.text,
  ),
  labelStyle: const TextStyle(
    color: AppColor.text,
  ),
  iconColor: AppColor.secondary,
  prefixIconColor: AppColor.secondary,
  hintStyle: const TextStyle(
    color: AppColor.text,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(
      color: AppColor.border,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(
      color: AppColor.border,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(
      color: AppColor.border,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(
      color: AppColor.border,
    ),
  ),
  focusedErrorBorder: InputBorder.none,
  errorStyle: const TextStyle(color: AppColor.primary),
  filled: true,
);

//Search TextField
// final kSearchTextField = InputDecoration(
//   helperStyle: const TextStyle(
//     color: AppColor.primaryText,
//   ),
//   floatingLabelStyle: const TextStyle(
//     color: AppColor.primaryText,
//   ),
//   labelStyle: const TextStyle(
//     color: AppColor.primaryText,
//   ),
//   iconColor: AppColor.secondary,
//   prefixIconColor: AppColor.secondary,
//   hintStyle: const TextStyle(
//     color: AppColor.placeholderText,
//   ),
//   border: OutlineInputBorder(
//     borderRadius: BorderRadius.circular(30),
//     borderSide: const BorderSide(
//       color: AppColor.border,
//     ),
//   ),
//   enabledBorder: OutlineInputBorder(
//     borderRadius: BorderRadius.circular(30),
//     borderSide: const BorderSide(
//       color: AppColor.border,
//     ),
//   ),
//   focusedBorder: OutlineInputBorder(
//     borderRadius: BorderRadius.circular(30),
//     borderSide: const BorderSide(
//       color: AppColor.border,
//     ),
//   ),
//   hoverColor: AppColor.background1,
//   focusColor: AppColor.background1,
//   fillColor: AppColor.background1,
//   filled: true,
// );

const y5 = SizedBox(height: 5);
const y10 = SizedBox(height: 10);
const y15 = SizedBox(height: 15);
const y20 = SizedBox(height: 20);
const y30 = SizedBox(height: 30);
const y40 = SizedBox(height: 40);
const y80 = SizedBox(height: 80);
const y100 = SizedBox(height: 100);

const x5 = SizedBox(width: 5);
const x10 = SizedBox(width: 10);
const x15 = SizedBox(width: 15);
const x20 = SizedBox(width: 20);
