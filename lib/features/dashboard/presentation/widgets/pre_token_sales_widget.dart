import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget preTokenSalesWidget() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      height: 500,
      width: 350,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Pre-Sale Token Sales',
            style: TextStyle(
                fontSize: 16.5,
                color: Color.fromRGBO(37, 57, 146, 1),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
