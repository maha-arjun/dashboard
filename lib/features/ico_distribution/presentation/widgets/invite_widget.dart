import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget inviteWidget() => Container(
      height: 350,
      width: 800,
      decoration: const BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Invite your friends and family and receive free tokens',
              style: TextStyle(
                  fontSize: 21,
                  color: AppColors.kPrimaryBlueColor,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Each member have a unique TWZ referral link to share with friends and family and receive a bonus - 15% of the value of their contribution. If any one sign-up with this link, will be added to your referral program. The referral link may be used during a token sales running.',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(73, 84, 99, 1),
                height: 1.4,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Referral URL',
                  style: TextStyle(
                    fontSize: 16.05,
                    color: AppColors.kPrimaryBlueColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'SEE YOUR REFERRAL',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.kBlueColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onHover: (s) {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.5),
                  border: Border.all(
                    width: 0.25,
                    color: AppColors.kGreyColor,
                  ),
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.link,
                      color: AppColors.kBlackColor,
                    ),
                    const Text(
                      '  https://demo.themenio.com/ico?ref=7d264f90653733592',
                      // overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: AppColors.kBgBlueColor,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: const Icon(
                        Icons.copy_outlined,
                        color: AppColors.kGreyColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'SHARE WITH : ',
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(73, 84, 99, 1),
              ),
            ),
          ],
        ),
      ),
    );
