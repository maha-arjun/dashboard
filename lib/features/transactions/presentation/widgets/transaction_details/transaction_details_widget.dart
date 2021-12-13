import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:flutter/material.dart';

class TransactionDetailsWidget {
  static const Divider divider = Divider(
    thickness: 0.5,
    color: AppColors.textGreyColor,
  );

  static const TextStyle boldText = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.textDarkGreyColor,
  );
  static Container verticalDivider = Container(
    height: double.infinity,
    width: 0.5,
    color: AppColors.textGreyColor,
  );

  static const TextStyle subTitleTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.textGreyColor,
    fontSize: 13,
  );

  static Container statusIndicator() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      color: AppColors.kGreenColor,
      child: const Text(
        'APPROVED',
        style: TextStyle(
          color: AppColors.kWhiteColor,
          fontSize: 11,
        ),
      ),
    );
  }

  static Widget mobileColumnWidget(
      {required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 4,right: 20),
          child: transactionInfoSubtitleText(title),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 4, bottom: 10,right: 20),
          child: child,
        ),
      ],
    );
  }

  static Padding sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 4),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          letterSpacing: 1.2,
          color: AppColors.textGreyColor,
        ),
      ),
    );
  }

  static Text transactionDetailsSubtitleText(String text) {
    return Text(
      text,
      style: AppTheme.subTitleTextStyle,
    );
  }

  static Text transactionInfoSubtitleText(String text) {
    return Text(
      text,
      style: subTitleTextStyle,
    );
  }
}
