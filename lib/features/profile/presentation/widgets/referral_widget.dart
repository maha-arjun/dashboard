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
          Text(
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
                      color: kBlueColor,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: " of the value of contribution",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
              style: TextStyle(
                fontSize: 14,
              ),
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
                  color: kGreyColor,
                ),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Icon(
                    Icons.link,
                    color: kBlackColor,
                  ),
                  Flexible(
                    child: Text(
                      '  https://demo.themenio.com/ico?ref=7d264f90653733592',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: kBgBlueColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Icon(
                      Icons.copy_outlined,
                      color: kGreyColor,
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
