import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget walletAddressWidget() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 70,
      width: 350,
      decoration: BoxDecoration(
          color: AppColors.kRedColor, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Add your wallet address before buy',
              style: TextStyle(
                color: AppColors.kWhiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.arrow_forward_sharp,
              color: AppColors.kWhiteColor,
            )
          ],
        ),
      ),
    );
