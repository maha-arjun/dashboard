import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:dashboard/features/profile/presentation/widgets/wallet_address_dialog.dart';
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
          const Text(
            'Your Account Status',
            style: AppTheme.sectionTitleTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.kGreenColor,
                ),
                onPressed: () {},
                child: const Text(
                  'Email Verified',
                  style: TextStyle(
                    color: AppColors.kWhiteColor,
                    fontSize: 11,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.kYellowColor,
                ),
                onPressed: () {},
                child: const Text(
                  'KYC Pending',
                  style: TextStyle(
                    color: AppColors.kWhiteColor,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Receiving Wallet',
            style: AppTheme.sectionTitleTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text('0x39deb3.....e2ac64rd '),
              const Icon(
                Icons.info,
                color: AppColors.kGreyColor,
                size: 20,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      child: WalletAddressDialog(),
                    ),
                  );
                },
                child: const Text(
                  'EDIT',
                  style: TextStyle(
                    color: AppColors.kPrimaryBlueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
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
