import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget downloadWhitePaperWidget(Size size) => Container(
  height: 192.39,
  width: size.width > 500 ? 365 : size.width * 0.95,
  decoration: const BoxDecoration(
      color: AppColors.kWhiteColor,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 28),
    child: Column(
      children: [
        //row 1
        SizedBox(
          height: 25.5,
          width: 212.23,
          child: Row(
            children: const [
              SizedBox(
                width: 110,
                child: Text(
                  'Token Name:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textGreyColor
                  ),
                ),
              ),
              Expanded(child: Text(
                'TokenWiz',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kBlueColor
                ),
              ))
            ],
          ),
        ),
        //row 2
        SizedBox(
          height: 25.5,
          width: 212.23,
          child: Row(
            children: const [
              SizedBox(
                width: 110,
                child: Text(
                  'Ticket Symbol:',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textGreyColor
                  ),
                ),
              ),
              Expanded(child: Text(
                'TWZ',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kBlueColor
                ),
              ))
            ],
          ),
        ),
        //conversion to usd
        const SizedBox(height: 20,),
        Container(
          height: 43,
          width: 212.23,
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(5),
            color: AppColors.kBlueColor
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.download, size: 14.14, color: AppColors.kWhiteColor,),
                Text(
                  'Download Whitepaper',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kWhiteColor
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  ),
);