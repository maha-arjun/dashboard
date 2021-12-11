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
          SizedBox(
            height: size.width * 0.025,
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Invite your friends & family and receive a ",
                ),
                TextSpan(
                    text: "bonus - 15% ",
                    style: TextStyle(
                      color: AppColors.kBlueColor,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: " of the value of contribution",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
              style: TextStyle(fontSize: 14, color: AppColors.textGreyColor),
            ),
          ),
          SizedBox(
            height: size.width * 0.025,
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
                  const Flexible(
                    child: Text(
                      '  https://demo.themenio.com/ico?ref=7d264f90653733592',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
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
        ],
      ),
    );
  }
}
