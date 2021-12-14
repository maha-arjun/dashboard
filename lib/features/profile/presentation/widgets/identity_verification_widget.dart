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
        const Text(
          'Identity Verification - KYC',
          style: AppTheme.sectionTitleTextStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'To comply with regulation, participant will have to go through identity verification.',
          style: TextStyle(
            color: AppColors.textGreyColor,
            height: 1.3,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'You have not submitted your KYC application to verify your identity.',
          style: TextStyle(
              color: AppColors.kGreyColor,
              height: 1.5,
              fontSize: 16,
              fontWeight: FontWeight.w100),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: AppTheme.elevatedButtonStyle!.copyWith(
            minimumSize:
                MaterialStateProperty.all(const Size(double.infinity, 50)),
          ),
          onPressed: () {},
          child: const Text('Click to Proceed'),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          '* KYC verification required for purchase token',
          style: TextStyle(
            color: AppColors.kPinkColor,
            height: 1.5,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ));
  }
}
