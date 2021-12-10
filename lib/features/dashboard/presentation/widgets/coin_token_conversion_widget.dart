import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget coinTokenConversionWidget() => Container(
  height: 192.39,
  width: 365,
  decoration: const BoxDecoration(
      color: AppColors.kWhiteColor,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 28),
    child: Column(
      children: const [
        //icon
        SizedBox(
          height: 46,
          width: 46,
          child: Icon(Icons.eleven_mp, size: 46,),
        ),
        //conversion
        SizedBox(height: 20,),
        Text(
            '1 ETH = 1000 TWZ',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25.71,
            color: AppColors.textGreyColor
          ),
        ),
        //conversion to usd
        SizedBox(height: 20,),
        Text(
          '1 ETH = 254.05 USD',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.05
          ),
        ),
      ],
    ),
  ),
);
