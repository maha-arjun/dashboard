import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_textfield.dart';
import 'package:flutter/material.dart';

class ProfileDataTab extends StatelessWidget {
  const ProfileDataTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textFieldTitle('Full Name'),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: textField(),
        ),
        textFieldTitle('Email Address'),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: textField(),
        ),
        textFieldTitle('Mobile Number'),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: textField(),
        ),
        textFieldTitle('Date of Birth'),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: textField(),
        ),
        textFieldTitle('Nationality'),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: textField(),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: AppTheme.elevatedButtonStyle,
              child: Text(
                'Update Profile',
              ),
            ),
            Spacer(),
            Icon(
              Icons.done_all_rounded,
              color: kGreenColor,
            ),
            Text(
              'All Changes are Saved',
              style: TextStyle(color: kGreenColor),
            )
          ],
        )
      ],
    );
  }
}
