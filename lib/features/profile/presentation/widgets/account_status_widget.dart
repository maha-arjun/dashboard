import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:flutter/material.dart';

class AccountStatusWidget extends StatelessWidget {
  const AccountStatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Account Status',
            style: AppTheme.sectionTitleTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton(
                style: AppTheme.elevatedButtonStyle!.copyWith(
                  backgroundColor: MaterialStateProperty.all(kGreenColor),
                ),
                onPressed: () {},
                child: Text(
                  'Email Verified',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 11,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: AppTheme.elevatedButtonStyle!.copyWith(
                  backgroundColor: MaterialStateProperty.all(kYellowColor),
                ),
                onPressed: () {},
                child: Text(
                  'KYC Pending',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Receiving Wallet',
            style: AppTheme.sectionTitleTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text('0x39deb3.....e2ac64rd '),
              Icon(
                Icons.info,
                color: kGreyColor,
                size: 20,
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'EDIT',
                  style: TextStyle(
                    color: kPrimaryBlueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
