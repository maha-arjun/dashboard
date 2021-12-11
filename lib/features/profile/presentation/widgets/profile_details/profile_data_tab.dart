import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/responsive_layout.dart';
import 'package:dashboard/core/widgets/default_textfield.dart';
import 'package:flutter/material.dart';

class ProfileDataTab extends StatelessWidget {
  const ProfileDataTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        MediaQuery.of(context).size.width > 770
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        subTitleText('Full Name'),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 20,
                          ),
                          child: textField(),
                        ),
                        subTitleText('Mobile Number'),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 20,
                          ),
                          child: textField(),
                        ),
                        subTitleText('Nationality'),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 20,
                          ),
                          child: textField(),
                        ),
                      ],
                    ),
                  ),
                 const  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        subTitleText('Email Address'),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 20,
                          ),
                          child: textField(),
                        ),
                        subTitleText('Date of Birth'),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 20,
                          ),
                          child: textField(),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subTitleText('Full Name'),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                    ),
                    child: textField(),
                  ),
                  subTitleText('Email Address'),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                    ),
                    child: textField(),
                  ),
                  subTitleText('Mobile Number'),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                    ),
                    child: textField(),
                  ),
                  subTitleText('Date of Birth'),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                    ),
                    child: textField(),
                  ),
                  subTitleText('Nationality'),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                    ),
                    child: textField(),
                  ),
                ],
              ),
        MediaQuery.of(context).size.width > 575
            ? Row(
                children: [updateButton(),const  Spacer(), updateStatusIndicator(),],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  updateButton(),
                 const  SizedBox(height: 20),
                  updateStatusIndicator(),
                ],
              ),
      ],
    );
  }

  ElevatedButton updateButton() {
    return ElevatedButton(
      onPressed: () {},
      style: AppTheme.elevatedButtonStyle,
      child: const Text(
        'Update Profile',
      ),
    );
  }

  Row updateStatusIndicator() {
    return Row(
      children: const [
        Icon(
          Icons.done_all_rounded,
          color: AppColors.kGreenColor,
        ),
        Text(
          'All Changes are Saved',
          style: TextStyle(color: AppColors.kGreenColor),
        ),
      ],
    );
  }
}
