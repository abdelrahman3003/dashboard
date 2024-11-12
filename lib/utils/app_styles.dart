import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle style16font700primary = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: "Montserrat",
    color: AppColors.primary,
  );
  static TextStyle style16font700black = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: "Montserrat",
    color: AppColors.black,
  );
  static TextStyle style24font600black = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: "Montserrat",
    color: AppColors.primary,
  );
  static TextStyle style16font500black = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
    color: AppColors.black,
  );
  static TextStyle style12font400black = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
  );
    static TextStyle style14font400black = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
  );
}
