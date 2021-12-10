import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:flutter/material.dart';
 Row menuOptionWidget(Size size, String text) {
    return Row(
      children: [
        const Icon(
          Icons.memory_outlined,
          color: AppColors.kBlueColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.kBlueColor,
          ),
        ),
      ],
    );
  }
