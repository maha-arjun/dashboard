import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:flutter/material.dart';

class TwoFactorVerificationWidget extends StatelessWidget {
  const TwoFactorVerificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Text(
        'Two - Factor Authentication',
        style: AppTheme.sectionTitleTextStyle,
      ),
    );
  }
}
