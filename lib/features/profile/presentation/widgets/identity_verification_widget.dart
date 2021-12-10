import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:flutter/material.dart';

class IdentityVerificationWidget extends StatelessWidget {
  const IdentityVerificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return DefaultContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Identity Verification - KYC',
          style: AppTheme.sectionTitleTextStyle,
        ),
        SizedBox(
          height: size.width * 0.02,
        ),
        Text(
          'To comply with regulation, participant will have to go through identity verification.',
          style: TextStyle(
            color: Colors.black87,
            height: 1.3,
          ),
        ),
        SizedBox(
          height: size.width * 0.02,
        ),
        Text(
          'You have not submitted your KYC application to verify your identity.',
          style: TextStyle(
              color: kGreyColor,
              height: 1.5,
              fontSize: 16,
              fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: size.width * 0.025,
        ),
        ElevatedButton(
          style: AppTheme.elevatedButtonStyle!.copyWith(
            minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
          ),
          onPressed: () {},
          child: Text('Click to Proceed'),
        ),
        SizedBox(
          height: size.width * 0.02,
        ),
        Text(
          '* KYC verification required for purchase token',
          style: TextStyle(
            color: kPinkColor,
            height: 1.5,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ));
  }
}
