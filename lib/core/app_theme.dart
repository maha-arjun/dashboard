import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const TextStyle sectionTitleTextStyle = TextStyle(
    color: AppColors.kPrimaryBlueColor,
    fontWeight: FontWeight.w600,
    fontSize: 18.2,
  );
  static const TextStyle menuButtonTextStyle = const TextStyle(
    fontSize: 16,
    color: AppColors.kBlueColor,
  );
  static const TextStyle subTitleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.textGreyColor,
    fontSize: 14,
  );

  static ButtonStyle? elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: AppColors.kBlueColor,
    minimumSize: Size(200, 57),
    onSurface: AppColors.kPrimaryBlueColor,
  );
}
