import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget tokenCalculationWidget(Size size) => Container(
  height: 265.59,
  width: size.width > 500 ? 365 : size.width * 0.95,
  decoration: BoxDecoration(
    color: AppColors.kWhiteColor,
    borderRadius: BorderRadius.circular(5),
  ),
  padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Token Calculation',
        style: TextStyle(
            fontSize: 21,
            color: AppColors.kPrimaryBlueColor,
            fontWeight: FontWeight.w600
        ),
      ),
      const SizedBox(height: 10,),
      const Text(
        'Enter amount to calculate token.',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 15,
            color: AppColors.textDarkGreyColor,
            fontWeight: FontWeight.w500
        ),
      ),
      const SizedBox(height: 10,),
      //conversion
      Row(
        children: [
          //conversion box
          Container(
            height: 42,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.textDarkGreyColor, width: 0.5)
            ),
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 70,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      initialValue: '1',
                      decoration: const InputDecoration.collapsed(hintText: ''),
                      style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textGreyColor
                      ),
                    ),
                  ),
                  Container(
                    height: 25.5,
                    width: 0.5,
                    color: AppColors.textGreyColor,
                  ),
                  //conversion tokens
                  const SizedBox(width: 10),
                  const Text(
                    'ETH',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textGreyColor,
                        fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            ),
          ),
          //=
          const SizedBox(width: 10),
          const Text(
            '=',
            style: TextStyle(
                fontSize: 20,
                color: AppColors.textGreyColor,
                fontWeight: FontWeight.w600
            ),
          ),
          //crypto value
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '123,500.35',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kPrimaryBlueColor,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 5),
              Text(
                'TWZ',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textDarkGreyColor,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          )
        ],
      ),
      //info
      const SizedBox(height: 10,),
      const Text(
        '     Amount calculate based on current tokens price',
        style: TextStyle(
            fontSize: 12,
            color: AppColors.textGreyColor,
            fontWeight: FontWeight.w500
        ),
      ),
      //button
      const SizedBox(height: 20,),
      Container(
        height: 42,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.kBlueColor
        ),
        child: const Center(
          child: Text(
            'Buy Tokens',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.kWhiteColor
            ),
          ),
        ),
      )
    ],
  ),
);