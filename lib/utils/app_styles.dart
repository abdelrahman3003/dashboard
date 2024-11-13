import 'dart:developer';

import 'package:dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle style16font700primary(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      color: AppColors.primary,
    );
  }

  static TextStyle style16font700black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      color: AppColors.black,
    );
  }

  static TextStyle style24font600black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 24),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: AppColors.black,
    );
  }

  static TextStyle style16font500black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: "Montserrat",
      color: AppColors.black,
    );
  }

  static TextStyle style16font400white(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: AppColors.white,
    );
  }

  static TextStyle style16font600black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: AppColors.black,
    );
  }

  static TextStyle style20font500whit(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      fontWeight: FontWeight.w500,
      fontFamily: "Montserrat",
      color: AppColors.white,
    );
  }

  static TextStyle style20font600black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: AppColors.black,
    );
  }

  static TextStyle style12font400black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
    );
  }

  static TextStyle style14font400black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: AppColors.black,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontsize}) {
  double scalFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * scalFactor;
  return responsiveFontSize.clamp(fontsize * .8, fontsize * 1.2);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  log("$width");
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 3000;
  }
}
