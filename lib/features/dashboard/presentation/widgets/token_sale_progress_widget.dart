import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

double total = 1500000;
double raised = 600000;
double softCap = 400000;
double hardCap = 1200000;

Widget tokenSaleProgressWidget(Size size){
  double width = size.width > 500 ? 350 -60 : size.width * 0.95 - 60;
  return Container(
    height: 304.19,
    width: size.width > 500 ? 350 : size.width * 0.95,
    decoration: BoxDecoration(
      color: AppColors.kWhiteColor,
      borderRadius: BorderRadius.circular(10),
    ),
    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Token Sales Progress',
          style: TextStyle(
              fontSize: 21,
              color: AppColors.kPrimaryBlueColor,
              fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(height: 18,),
        //progress headers
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Raised',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textGreyColor,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  '2,758 TWZ',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textDarkGreyColor,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'TOTAL',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textGreyColor,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  '1,500,000 TWZ',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textDarkGreyColor,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ],
        ),
        //progress bar
        const SizedBox(height: 10,),
        SizedBox(
          height: 18,
          child: Stack(
            children: [
              //bar
              Center(
                child: Container(
                  height: 7.59,
                  width: width,
                  decoration: BoxDecoration(
                      color: AppColors.progressGreyColor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Stack(
                    children: [
                      //soft cap, hard cap
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //soft capital
                          Container(
                            height: 7.59,
                            width: (width / 100 *(softCap / total * 100)),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                              color: AppColors.textGreyColor,
                            ),
                          ),
                          //hard capital
                          Container(
                            height: 7.59,
                            width: (width / 100 *((total - hardCap) / total * 100)),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                              color: AppColors.textGreyColor,
                            ),
                          ),
                        ],
                      ),
                      //raised
                      Container(
                        height: 7.59,
                        width: (width / 100 *(raised / total * 100)),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          color: AppColors.kBlueColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //indicator
              Padding(
                padding: EdgeInsets.only(left: (width / 100 *(raised / total * 100)) - 18),
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.kBlueColor
                  ),
                  child: Center(
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.kWhiteColor
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        //soft cap hard cap indicator text
        Row(
          children: [
            SizedBox(width: (width / 100 *(softCap / total * 100)) - 0.5,),
            Container(
              height: 25,
              width: 0.5,
              color: AppColors.textGreyColor,
            ),
            SizedBox(
              width: (width / 100 *(softCap / total * 100)) * 2 - 0.5,
            ),
            Container(
              height: 25,
              width: 0.5,
              color: AppColors.textGreyColor,
            ),
          ],
        ),
        //soft cap hard cap indicator text
        Row(
          children: [
            //spacing
            SizedBox(
              width: size.width > 500 ? 20 : 50,
            ),
            //soft cap
            SizedBox(
              width: 120,
              height: 30,
              child: Column(
                children: const [
                  Text(
                    'Soft CAP',
                    style: TextStyle(
                        fontSize: 10,
                        color: AppColors.textGreyColor,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    '400,000',
                    style: TextStyle(
                        fontSize: 10,
                        color: AppColors.textDarkGreyColor,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            ),
            //spacing
            SizedBox(
              width: size.width > 500 ? 70 : 140,
            ),
            //hard cap
            Column(
              children: const [
                Text(
                  'Hard CAP',
                  style: TextStyle(
                      fontSize: 10,
                      color: AppColors.textGreyColor,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  '1200000',
                  style: TextStyle(
                      fontSize: 10,
                      color: AppColors.textDarkGreyColor,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            )
          ],
        ),
        //sale ends in
        const SizedBox(height: 15,),
        const Text(
          'SALES ENDS IN',
          style: TextStyle(
              fontSize: 12,
              color: AppColors.textDarkGreyColor,
              fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //days
            Container(
              height: 61.5,
              width: 61.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.textGreyColor),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '78',
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColors.textDarkGreyColor,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    'DAYS',
                    style: TextStyle(
                        fontSize: 11,
                        color: AppColors.textGreyColor,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            //hour
            Container(
              height: 61.5,
              width: 61.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.textGreyColor),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '08',
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColors.textDarkGreyColor,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    'HOURS',
                    style: TextStyle(
                        fontSize: 11,
                        color: AppColors.textGreyColor,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            //min
            Container(
              height: 61.5,
              width: 61.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.textGreyColor),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '30',
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColors.textDarkGreyColor,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    'MIN',
                    style: TextStyle(
                        fontSize: 11,
                        color: AppColors.textGreyColor,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            //sec
            Container(
              height: 61.5,
              width: 61.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.textGreyColor),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '38',
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColors.textDarkGreyColor,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    'SEC',
                    style: TextStyle(
                        fontSize: 11,
                        color: AppColors.textGreyColor,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}
