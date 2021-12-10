import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget coinTokenConversionWidget() => Container(
      height: 192.39,
      width: 365,
      decoration: const BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28),
        child: Column(
          children: const [
            //icon
            SizedBox(
              height: 90,
              width: 46,
            ),
            //
          ],
        ),
      ),
    );
