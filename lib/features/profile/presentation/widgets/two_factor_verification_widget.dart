import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/responsive_layout.dart';
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
          const Text(
            'Two - Factor Authentication',
            style: AppTheme.sectionTitleTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Two-factor authentication is a method for protection your web account. When it is activated you need to enter not only your password, but also a special code. You can receive this code by in mobile app. Even if third person will find your password, then can\'t access with that code.',
            style: TextStyle(
              color: Colors.black54,
              height: 1.4,
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          ResponsiveLayout.isMobile(context)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    statusIndicator(),
                    const SizedBox(
                      height: 20,
                    ),
                    enableButton()
                  ],
                )
              : Row(
                  children: [
                    enableButton(),
                    const Spacer(),
                    statusIndicator(),
                  ],
                ),
        ],
      ),
    );
  }

  Row statusIndicator() {
    return Row(
      children: [
        const Text(
          'CURRENT STATUS: ',
          style: TextStyle(fontSize: 11),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: AppColors.kBgBlueColor,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Text(
            'DISABLED',
            style: TextStyle(fontSize: 11),
          ),
        ),
      ],
    );
  }

  ElevatedButton enableButton() {
    return ElevatedButton(
      onPressed: () {},
      style: AppTheme.elevatedButtonStyle,
      child: const Text('Enable 2FA'),
    );
  }
}
