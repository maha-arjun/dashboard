import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

class KYCScreen extends StatefulWidget {
  const KYCScreen({Key? key}) : super(key: key);

  @override
  _KYCScreenState createState() => _KYCScreenState();
}

class _KYCScreenState extends State<KYCScreen> {
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
                  'KYC Verification',
                    style: TextStyle(
                        color: AppColors.kPrimaryBlueColor,
                        fontSize: 21
                    )
                ),
                SizedBox(height: 7,),
                Text(
                  'To comply with regulation each participant will have to go through indentity verification (KYC/AML) to prevent fraud causes. Please, complete our fast and secure verification process to participate in our token sale.',
                  style: TextStyle(
                    color: AppColors.textDarkGreyColor,
                    fontSize: 14
                  ),
                )
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
                    'You have not submitted your necessary documents to verify your identity. In order to purchase our tokens, please verify your identity.',
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
                      'Click here to complete KYC',
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
