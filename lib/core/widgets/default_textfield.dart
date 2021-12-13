import 'package:dashboard/core/app_theme.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

Widget textField([String? text, TextEditingController? controller]) {
  
  return SizedBox(
    height: 40,
    child: TextFormField(
      controller: controller,
      // initialValue: controller!.text ?? '',
      decoration:AppTheme.textFieldDecoration,
      cursorWidth: 1,
      style: AppTheme.inputTextStyle,
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
