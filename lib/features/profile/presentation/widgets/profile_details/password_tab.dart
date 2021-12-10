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
        const SizedBox(
          height: 10,
        ),
        MediaQuery.of(context).size.width > 770
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        subTitleText('Old Password'),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 20,
                          ),
                          child: textField(),
                        ),
                        subTitleText('New Password'),
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
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        subTitleText('Confirm New Password'),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 20,
                          ),
                          child: textField(),
                        ),
                      ],
                    ),
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subTitleText('Old Password'),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                    ),
                    child: textField(),
                  ),
                  subTitleText('New Password'),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                    ),
                    child: textField(),
                  ),
                  subTitleText('Confirm New Password'),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                    ),
                    child: textField(),
                  ),
                ],
              ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.info,
              color: AppColors.kBlueColor,
              size: 15,
            ),
            Expanded(
              child: Text(
                ' Password should be minimum 8 letter and include lower and uppercase letter.',
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.kBlueColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        MediaQuery.of(context).size.width > 575
            ? Row(
                children: [
                  updateButton(),
                  const Spacer(),
                  updateStatusIndicator(),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  updateButton(),
                  const SizedBox(height: 20),
                  updateStatusIndicator(),
                ],
              ),
      ],
    );
  }

  Widget updateStatusIndicator() {
    return Row(
      children: const [
        Icon(
          Icons.done_all_rounded,
          color: AppColors.kGreenColor,
        ),
        Text(
          ' Changed Password',
          style: TextStyle(color: AppColors.kGreenColor),
        ),
      ],
    );
  }

  ElevatedButton updateButton() {
    return ElevatedButton(
      onPressed: () {},
      style: AppTheme.elevatedButtonStyle,
      child: const Text(
        'Update',
      ),
    );
  }
}
