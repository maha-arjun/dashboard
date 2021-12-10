import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const TextStyle sectionTitleTextStyle = TextStyle(
    color: kPrimaryBlueColor,
    fontWeight: FontWeight.w600,
    fontSize: 17,
  );
  static const TextStyle textFieldTitleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: kGreyColor,
    fontSize: 14,
  );

  static ButtonStyle? elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: kBlueColor,
    minimumSize: null,
    onSurface: kPrimaryBlueColor,
  );
}
