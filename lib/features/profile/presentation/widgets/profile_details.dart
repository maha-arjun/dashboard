import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:flutter/material.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile Details',
            style: AppTheme.sectionTitleTextStyle,
          ),
          textFieldTitle('Full Name'),
          textField(),
          textFieldTitle('Email Address'),
          textField(),
          textFieldTitle('Mobile Number'),
          textField(),
          textFieldTitle('Date of Birth'),
          textField(),
          textFieldTitle('Nationality'),
          textField(),
        ],
      ),
    );
  }

  Container textField() {
    return Container(
      height: 40,
      child: TextFormField(
        decoration: InputDecoration(
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(2.5),
          //   borderSide: BorderSide(
          //     width: 0.25,
          //     color: Colors.grey,
          //   ),
          // ),
          // disabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(2.5),
          //   borderSide: BorderSide(
          //     width: 0.25,
          //     color: Colors.grey,
          //   ),
          // ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.5),
            borderSide: BorderSide(
              width: 0.25,
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.5),
            borderSide: BorderSide(
              width: 0.5,
              color: Colors.grey,
            ),
          ),
        ),
        cursorWidth: 1,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color: kGreyColor,
          fontSize: 14,
        ),
        cursorColor: kGreyColor,
      ),
    );
  }

  Text textFieldTitle(String title) {
    return Text(
      title,
      style: AppTheme.textFieldTitleTextStyle,
    );
  }
}
