import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

import 'graph_widget.dart';

Widget tokenSaleGraphWidget(Size size) => Container(
  height: 290.3,
  width: size.width > 500 ? 730 : size.width * 0.95,
  decoration: BoxDecoration(
    color: AppColors.kWhiteColor,
    borderRadius: BorderRadius.circular(5),
  ),
  padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
  child: Column(
    children: [
      //row 1
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Tokens Sale Graph',
            style: TextStyle(
                fontSize: 21,
                color: AppColors.kPrimaryBlueColor,
                fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            width: 55.45,
            height: 20.39,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '7 DAYS',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textGreyColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Icon(Icons.keyboard_arrow_down, size: 12, color: AppColors.textGreyColor,)
              ],
            ),
          )
        ],
      ),
      //graph
      const Expanded(child: LineChartSample2())
    ],
  ),
);