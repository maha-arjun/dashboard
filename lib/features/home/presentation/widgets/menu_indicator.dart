import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Visibility menuIndicator(BuildContext context, bool isActive) {
  return Visibility(
    maintainAnimation: true,
    maintainState: true,
    maintainSize: true,
    visible: isActive,
    child: Container(
      color: kBlueColor,
      height: 2,
      width: double.infinity,
    ),
  );
}

Visibility menuIndicatorDesktop(BuildContext context, bool isActive) {
  return Visibility(
    maintainAnimation: true,
    maintainState: true,
    maintainSize: true,
    visible: isActive,
    child: Container(
      color: kBlueColor,
      height: 2,
      width: Get.size.width,
    ),
  );
}
