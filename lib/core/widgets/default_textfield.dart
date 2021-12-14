import 'package:dashboard/core/app_theme.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

Widget textField([String? text]) {
  return SizedBox(
    height: 40,
    child: TextFormField(
      initialValue: text,
      decoration: InputDecoration(
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
      ),
      cursorWidth: 1,
      style: const TextStyle(
        fontWeight: FontWeight.w300,
        color: AppColors.kGreyColor,
        fontSize: 14,
      ),
      cursorColor: AppColors.kGreyColor,
    ),
  );
}

Text subTitleText(String title) {
  return Text(
    title,
    style: AppTheme.subTitleTextStyle,
  );
}
