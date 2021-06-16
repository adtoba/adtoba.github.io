import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';

class AppInputStyles {
  static TextStyle welcomeText = TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      color: AppColors.white);

  static TextStyle aboutText = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
      color: AppColors.greyText);

  static TextStyle headingStyle = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      color: AppColors.white);

  static TextStyle headingStyle2 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      letterSpacing: 2,
      color: AppColors.white);

  static TextStyle itemSubtitleStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
      color: AppColors.greyText);

  static TextStyle itemTitleStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      color: AppColors.white);
}
