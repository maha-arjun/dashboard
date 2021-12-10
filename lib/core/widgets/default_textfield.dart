import 'package:dashboard/core/app_theme.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

Widget textField() {
  return Container(
    height: 40,
    child: TextFormField(
      decoration: InputDecoration(
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(2.5),
        //   borderSide: BorderSide(
        //     width: 0.25,
        //     color: Colors.grey,
        //   ),
        // ),
        // disabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(2.5),
        //   borderSide: BorderSide(
        //     width: 0.25,
        //     color: Colors.grey,
        //   ),
        // ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.5),
          borderSide: BorderSide(
            width: 0.25,
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.5),
          borderSide: BorderSide(
            width: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      cursorWidth: 1,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        color: kGreyColor,
        fontSize: 14,
      ),
      cursorColor: kGreyColor,
    ),
  );
}

Text textFieldTitle(String title) {
  return Text(
    title,
    style: AppTheme.textFieldTitleTextStyle,
  );
}
