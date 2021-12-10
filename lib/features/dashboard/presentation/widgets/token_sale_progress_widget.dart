import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget tokenSaleProgressWidget() => Container(
      height: 304.19,
      width: 350,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Token Calculation',
            style: TextStyle(
                fontSize: 21,
                color: AppColors.kPrimaryBlueColor,
                fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
