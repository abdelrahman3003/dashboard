import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  TextStyle style16font700primary = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: "Montserrat",
    color: AppColors.primary,
  );
    TextStyle style16font700black = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: "Montserrat",
    color: AppColors.black,
  );
      TextStyle style24font600black = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: "Montserrat",
    color: AppColors.primary,
  );
    TextStyle style16font500black = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
    color: AppColors.black,
  );
}
