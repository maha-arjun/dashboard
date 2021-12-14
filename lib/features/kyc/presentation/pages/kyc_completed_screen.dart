import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

class KYCCCompletedScreen extends StatefulWidget {
  const KYCCCompletedScreen({Key? key}) : super(key: key);

  @override
  _KYCCCompletedScreenState createState() => _KYCCCompletedScreenState();
}

class _KYCCCompletedScreenState extends State<KYCCCompletedScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          //row 1
          Container(
            width: size.width > 500 ? 777 : size.width,
            padding: EdgeInsets.symmetric(vertical: size.width > 500 ? 60 : 25, horizontal: 15),
            child: Column(
              children: const [
                Text(
                    'Begin your ID-Verification',
                    style: TextStyle(
                        color: AppColors.kPrimaryBlueColor,
                        fontSize: 38.55
                    )
                ),
                SizedBox(height: 20,),
                Text(
                    'Verify your identity to participate in token sale.',
                    style: TextStyle(
                        color: AppColors.textDarkGreyColor,
                        fontSize: 18
                    )
                ),
              ],
            ),
          ),
          //row 2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              width: size.width > 500 ? 777 : size.width,
              padding: const EdgeInsets.all(70),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                children: [
                  const Icon(Icons.four_k_sharp, size: 90),
                  const SizedBox(height: 20,),
                  const Text(
                    'You have completed the process of KYC.',
                    style: TextStyle(
                        color: AppColors.textDarkGreyColor,
                        fontSize: 23
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Text(
                    'We are still waiting for your identity verification. Once our team verified your indentity, you will be notified by email. You can also check your KYC compliance status from your profile page..',
                    style: TextStyle(
                        color: AppColors.textDarkGreyColor,
                        fontSize: 18.06
                    ),
                  ),
                  const SizedBox(height: 33,),
                  //button
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.kBlueColor
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      'Back to Profile',
                      style: TextStyle(
                          fontSize: size.width > 500 ? 14 : 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kWhiteColor
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
