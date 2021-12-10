import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget downloadWhitePaperWidget() => Container(
  height: 195,
  width: 350,
  decoration: const BoxDecoration(
      color: AppColors.kWhiteColor,
      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
  ),
);