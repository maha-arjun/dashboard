import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:flutter/material.dart';

class ReferralWidget extends StatelessWidget {
  const ReferralWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Earn with Referral',
            style: AppTheme.sectionTitleTextStyle,
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Invite your friends & family and receive a ",
                ),
                TextSpan(
                    text: "bonus - 15% ", style: TextStyle(color: AppColors.kBlueColor)),
                TextSpan(
                    text: " of the value of contribution",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
