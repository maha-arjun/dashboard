import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget icoDistrubtionWidget() => Container(
      height: 510,
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
              'ICO Distribution, Rate & Sales Info',
              style: TextStyle(
                  fontSize: 21,
                  color: AppColors.kPrimaryBlueColor,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'To become a part of TokenWiz project, you can found all details of ICO.',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(73, 84, 99, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'You can contribute and buy TWZ tokens.',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(73, 84, 99, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'You can get a quick response and chat with our team in Telegram:',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(73, 84, 99, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'htts://t.me/tokenwiz',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(73, 84, 99, 1),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'ICO Schedule',
              style: TextStyle(
                  fontSize: 21,
                  color: AppColors.kPrimaryBlueColor,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Pre-Sale ICO',
                          style: TextStyle(
                              fontSize: 16.05,
                              color: AppColors.kBlueColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 20,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: AppColors.kGreenColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: const Center(
                            child: Text(
                              'RUNNING',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.kWhiteColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Start at Dec 02, 2018 - 11:00 AM',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'End at Jan 15, 2019 - 11:00 AM',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '0.00080 ETH',
                      style: TextStyle(
                          fontSize: 16.05,
                          color: AppColors.kBlueColor,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Min purchase - 0.35 ETH',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Token Distribute - 250,000',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.kBlueColor, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    '20% Bonus',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.kBlueColor,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Main ICO Sale',
                          style: TextStyle(
                              fontSize: 16.05,
                              color: AppColors.kBlueColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: const Center(
                            child: Text(
                              'UPCOMING',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.textDarkGreyColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Start at Dec 02, 2018 - 11:00 AM',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'End at Jan 15, 2019 - 11:00 AM',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '0.00080 ETH',
                      style: TextStyle(
                          fontSize: 16.05,
                          color: AppColors.kBlueColor,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Min purchase - 0.35 ETH',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Token Distribute - 250,000',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.kBlueColor, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    '20% Bonus',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.kBlueColor,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '* Time zone set in (GMT +6) Dhaka, Bangladesh',
              style: TextStyle(
                fontSize: 13.95,
                color: AppColors.textGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
