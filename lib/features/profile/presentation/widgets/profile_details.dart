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
        children: const [
          Text(
            'Profile Details',
            style: AppTheme.sectionTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
