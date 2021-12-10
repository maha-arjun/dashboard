import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';
 Row menuOptionWidget(Size size, String text) {
    return Row(
      children: [
        const Icon(
          Icons.memory_outlined,
          color: kBlueColor,
        ),
        SizedBox(
          width: size.width * 0.0025,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: kBlueColor,
          ),
        ),
      ],
    );
  }