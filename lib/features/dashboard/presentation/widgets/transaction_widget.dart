import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget transactionWidget() => Container(
  height: 265.59,
  width: 730,
  decoration: BoxDecoration(
    color: AppColors.kWhiteColor,
    borderRadius: BorderRadius.circular(5),
  ),
  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
  child: Column(
    children: [
      //row 1
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Transaction',
            style: TextStyle(
              fontSize: 21,
              color: AppColors.kPrimaryBlueColor,
                fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            width: 66.66,
            height: 20.39,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'VIEW ALL',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.kBlueColor,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 9, color: AppColors.kBlueColor,)
              ],
            ),
          )
        ],
      ),
      //row 2
      const SizedBox(
        height: 15,
      ),
      //header
      Row(
        children: const [
          SizedBox(
            width: 178.55,
            height: 30.39,
            child: Text(
              'TWZ TOKENS',
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.kBlueColor,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            width: 155.56,
            height: 30.39,
            child: Text(
              'AMOUNT',
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.kBlueColor,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            width: 245.89,
            height: 30.39,
            child: Text(
              'DATE',
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.kBlueColor,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
      ),
      //contents
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 178.55,
            height: 15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(Icons.alarm, size: 18,),
                SizedBox(width: 5,),
                Text(
                  '18,750',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textDarkGreyColor,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 155.56,
            height: 15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '3.543',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textDarkGreyColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  'ETH',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textGreyColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 245.89,
            height: 15,
            child: Text(
                '2018-08-24 10:20 PM',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textDarkGreyColor,
                    fontWeight: FontWeight.w500
                ),
            )
          ),
          Container(
            height: 30,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.borderGreenColor, width: 1)
            ),
            child: const Center(
              child: Text(
                'Purchase',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textDarkGreyColor,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 178.55,
            height: 15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(Icons.alarm, size: 18,),
                SizedBox(width: 5,),
                Text(
                  '18,750',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textDarkGreyColor,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 155.56,
            height: 15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '0.165',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textDarkGreyColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  'BTC',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textGreyColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
              width: 245.89,
              height: 15,
              child: Text(
                '2018-08-24 10:20 PM',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textDarkGreyColor,
                    fontWeight: FontWeight.w500
                ),
              )
          ),
          Container(
            height: 30,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.borderYellowColor, width: 1)
            ),
            child: const Center(
              child: Text(
                'Bonus',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textDarkGreyColor,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 178.55,
            height: 15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(Icons.alarm, size: 18,),
                SizedBox(width: 5,),
                Text(
                  '18,750',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textDarkGreyColor,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 155.56,
            height: 15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '3.141',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textDarkGreyColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  'LTC',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textGreyColor,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
              width: 245.89,
              height: 15,
              child: Text(
                '2018-08-24 10:20 PM',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textDarkGreyColor,
                    fontWeight: FontWeight.w500
                ),
              )
          ),
          Container(
            height: 30,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.borderYellowColor, width: 1)
            ),
            child: const Center(
              child: Text(
                'Bonus',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textDarkGreyColor,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          )
        ],
      ),
    ],
  ),
);