import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_constants.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:dashboard/core/widgets/default_textfield.dart';
import 'package:flutter/material.dart';

class WalletAddressDialog extends StatelessWidget {
  const WalletAddressDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: size.width < 770
              ? EdgeInsets.symmetric(horizontal: size.width * 0.05)
              : null,
          width: size.width > 770 ? 520 : null,
          child: DefaultContainer(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wallet Address',
                  style: AppTheme.sectionTitleTextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "In order to receive your",
                      ),
                      TextSpan(
                          text: " TWZ Tokens",
                          style: TextStyle(
                            color: AppColors.kBlueColor,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                        text:
                            ", please select your wallet address and you have to put the address below input box.",
                      ),
                      TextSpan(
                          text:
                              " You will receive TWZ tokens to this address after the Token Sale end.",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                    style:
                        TextStyle(fontSize: 14, color: AppColors.textGreyColor),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                subTitleText('Select Wallet'),
                const SizedBox(
                  height: 10,
                ),
                textField('0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae'),
                const SizedBox(
                  height: 20,
                ),
                subTitleText('Your Address for tokens:'),
                const SizedBox(
                  height: 10,
                ),
                textField('0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae'),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Note: Address should be ERC20 - compliant',
                  style: TextStyle(
                    color: AppColors.textGreyColor,
                    fontSize: 12,
                    height: 1.3,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.info,
                      color: AppColors.kPinkColor,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        walletAddressWarning,
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          color: AppColors.kPinkColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: AppTheme.elevatedButtonStyle,
                  onPressed: () {},
                  child: Text('Update Wallet'),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0.0,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
