import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:flutter/material.dart';

class TwoFactorVerificationWidget extends StatelessWidget {
  const TwoFactorVerificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Two - Factor Authentication',
            style: AppTheme.sectionTitleTextStyle,
          ),
          SizedBox(
            height: size.width * 0.025,
          ),
          Text(
            'Two-factor authentication is a method for protection your web account. When it is activated you need to enter not only your password, but also a special code. You can receive this code by in mobile app. Even if third person will find your password, then can\'t access with that code.',
            style: TextStyle(
              color: Colors.black54,
              height: 1.4,
            ),
          ),
          SizedBox(
            height: size.width * 0.025,
          ),
          Row(
            children: [
              Text('CURRENT STATUS: '),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: kBgBlueColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  'DISABLED',
                  style: TextStyle(fontSize: 11),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.width * 0.035,
          ),
          ElevatedButton(
            onPressed: () {},
            style: AppTheme.elevatedButtonStyle,
            child: Text('Enable 2FA'),
          )
        ],
      ),
    );
  }
}
