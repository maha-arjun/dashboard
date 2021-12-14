import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/widgets/default_textfield.dart';
import 'package:flutter/material.dart';

class KYCFormScreen extends StatefulWidget {
  const KYCFormScreen({Key? key}) : super(key: key);

  @override
  _KYCFormScreenState createState() => _KYCFormScreenState();
}

class _KYCFormScreenState extends State<KYCFormScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          //header
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
          //form
          SizedBox(height: size.width > 500 ? 30 : 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: size.width > 500 ? 777 : size.width,
              color: AppColors.kWhiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //icon header
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: SizedBox(
                      height: 48,
                      child: Row(
                        children: [
                          const Icon(Icons.eleven_mp, size: 48,),
                          const SizedBox(width: 12,),
                          //text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Personal Details', style:  TextStyle(fontWeight: FontWeight.w600, fontSize: 16.1, color: AppColors.kPrimaryBlueColor),),
                              Text('Your simple personal information required for identification', style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 13.1, color: AppColors.textDarkGreyColor),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  //separator
                  Container(
                    width: size.width,
                    height: 0.5,
                    color: AppColors.textGreyColor,
                  ),
                  //form details input
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Please type carefully and fill out the form with your personal details. Your can’t edit these details once you submitted the form.', style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 13.1, color: AppColors.textDarkGreyColor),),
                        const SizedBox(height: 20,),
                        //row 1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('First Name'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('Last Name'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                          ],
                        ),
                        //row 2
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('Email Address'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('Phone Number'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                          ],
                        ),
                        //row 3
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('Date of Birth'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('Telegram Username'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                          ],
                        ),
                        //your address header
                        const SizedBox(height: 20,),
                        const Text(
                            'Your Address',
                            style: TextStyle(
                                color: AppColors.kPrimaryBlueColor,
                                fontSize: 19.35
                            )
                        ),
                        //row 1
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('Address Line 1'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('Address Line 2'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                          ],
                        ),
                        //row 2
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('City'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('State'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                          ],
                        ),
                        //row 3
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('Nationality'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleText('Zip Code'),
                                const SizedBox(height: 12,),
                                textField(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //separator
                  Container(
                    width: size.width,
                    height: 0.5,
                    color: AppColors.textGreyColor,
                  ),
                  //document upload
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: SizedBox(
                      height: 48,
                      child: Row(
                        children: [
                          const Icon(Icons.eleven_mp, size: 48,),
                          const SizedBox(width: 12,),
                          //text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Personal Details', style:  TextStyle(fontWeight: FontWeight.w600, fontSize: 16.1, color: AppColors.kPrimaryBlueColor),),
                              Text('Your simple personal information required for identification', style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 13.1, color: AppColors.textDarkGreyColor),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  //separator
                  Container(
                    width: size.width,
                    height: 0.5,
                    color: AppColors.textGreyColor,
                  ),
                  //document upload
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('In order to complete, please upload any of the following personal document.', style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 13.1, color: AppColors.textDarkGreyColor),),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          //form

        ],
      ),
    );
  }

  Widget textField() => SizedBox(
    height: 40,
    width: 343.5,
    child: TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.5),
          borderSide: const BorderSide(
            width: 0.25,
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.5),
          borderSide: const BorderSide(
            width: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      cursorWidth: 1,
      style: const TextStyle(
        fontWeight: FontWeight.w300,
        color: AppColors.kGreyColor,
        fontSize: 14,
      ),
      cursorColor: AppColors.kGreyColor,
    ),
  );
}
