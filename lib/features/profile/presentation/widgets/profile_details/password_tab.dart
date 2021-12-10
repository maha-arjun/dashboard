import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_textfield.dart';
import 'package:flutter/material.dart';

class PasswordTab extends StatelessWidget {
  const PasswordTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textFieldTitle('Old Password'),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: textField(),
        ),
        textFieldTitle('New Password'),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: textField(),
        ),
        textFieldTitle('Confirm New Password'),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: textField(),
        ),
        Row(
          children: [
            Icon(
              Icons.info,
              color: kBlueColor,
              size: 15,
            ),
            Text(
              ' Password should be minimum 8 letter and include lower and uppercase letter.',
              style: TextStyle(
                fontSize: 10,
                color: kBlueColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: AppTheme.elevatedButtonStyle,
              child: Text(
                'Update',
              ),
            ),
            Spacer(),
            Icon(
              Icons.done_all_rounded,
              color: kGreenColor,
            ),
            Text(
              ' Changed Password',
              style: TextStyle(color: kGreenColor),
            )
          ],
        )
      ],
    );
  }
}
