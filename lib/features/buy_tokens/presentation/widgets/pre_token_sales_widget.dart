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
        children: [
          const Text(
            'Pre-Sale Token Sales',
            style: TextStyle(
                fontSize: 16.5,
                color: Color.fromRGBO(37, 57, 146, 1),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'TWZ TOKEN PRICE',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(73, 84, 99, 1),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: '1 ETH =',
                    style: TextStyle(
                        fontSize: 19.5,
                        color: AppColors.textGreyColor,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: ' 12500 TWZ',
                    style: TextStyle(
                        fontSize: 19.5,
                        color: AppColors.kBlueColor,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'EXCHANGE RATE',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(73, 84, 99, 1),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '1 ETH = 196.98 USD = 0.032 BTC',
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(73, 84, 99, 1),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'CURRENT BONUS',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(73, 84, 99, 1),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '20%',
                style: TextStyle(
                    fontSize: 19.5,
                    color: AppColors.textGreyColor,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'End at',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Color.fromRGBO(73, 84, 99, 1),
                    ),
                  ),
                  Text(
                    '10 Jan, 2019',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Color.fromRGBO(73, 84, 99, 1),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
