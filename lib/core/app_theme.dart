import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const TextStyle sectionTitleTextStyle = TextStyle(
    color: AppColors.kPrimaryBlueColor,
    fontWeight: FontWeight.w600,
    fontSize: 18.2,
  );
  static const TextStyle menuButtonTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.kBlueColor,
  );
  static const TextStyle subTitleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.textGreyColor,
    fontSize: 14,
  );
  static const TextStyle labelTextStyle = TextStyle(
    fontSize: 12,
    color: AppColors.kBlueColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle cellSubtitleTextStyle = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: AppColors.textGreyColor,
  );
  static const TextStyle cellTitleTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.textDarkGreyColor,
  );

  static ButtonStyle? elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: AppColors.kBlueColor,
    minimumSize: const Size(200, 57),
    onSurface: AppColors.kPrimaryBlueColor,
  );
}
