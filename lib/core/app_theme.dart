import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppTheme {

  static DateFormat dateFormat = DateFormat.yMd().add_jm();
  static const TextStyle sectionTitleTextStyle = TextStyle(
    color: AppColors.kPrimaryBlueColor,
    fontWeight: FontWeight.w600,
    fontSize: 18.2,
  );
  static const TextStyle menuButtonTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.kBlueColor,
  );

  static const inputTextStyle = TextStyle(
    fontWeight: FontWeight.w300,
    color: AppColors.kGreyColor,
    fontSize: 14,
  );

  static const TextStyle subTitleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.textGreyColor,
    fontSize: 14,
  );
  static const TextStyle labelTextStyle = TextStyle(
    fontSize: 12,
    color: AppColors.kBlueColor,
    letterSpacing: 1.5,
    fontWeight: FontWeight.w600,
  );
  static TextStyle cellSubtitleTextStyle(double width) {
    return TextStyle(
      fontSize: width > 770 ? 12 : 10,
      fontWeight: FontWeight.w300,
      color: AppColors.textGreyColor,
    );
  }

  static TextStyle cellTitleTextStyle(double width) => TextStyle(
        fontSize: width > 770 ? 14 : 12,
        fontWeight: FontWeight.w600,
        color: AppColors.textDarkGreyColor,
      );

  static ButtonStyle? elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: AppColors.kBlueColor,
    minimumSize: const Size(200, 57),
    onSurface: AppColors.kPrimaryBlueColor,
  );

  static InputDecoration textFieldDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(2.5),
      borderSide: const BorderSide(
        width: 0.25,
        color: Colors.grey,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(2.5),
      borderSide: const BorderSide(
        width: 0.5,
        color: Colors.grey,
      ),
    ),
  );
}
