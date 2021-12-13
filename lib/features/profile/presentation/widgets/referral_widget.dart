import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReferralWidget extends StatefulWidget {
  const ReferralWidget({Key? key}) : super(key: key);

  @override
  State<ReferralWidget> createState() => _ReferralWidgetState();
}

class _ReferralWidgetState extends State<ReferralWidget> {
  Widget? child;
  final text = const Text(
    '  https://demo.themenio.com/ico?ref=7d264f90653733592',
    overflow: TextOverflow.ellipsis,
  );

  @override
  void initState() {
    super.initState();
    setState(() {
      child = text;
    });
  }

  final clipboardText = const Text(
    ' COPIED TO CLIPBOARD',
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
      color: AppColors.kBlueColor,
    ),
    overflow: TextOverflow.ellipsis,
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return DefaultContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Earn with Referral',
            style: AppTheme.sectionTitleTextStyle,
          ),
          const SizedBox(
            height: 12,
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Invite your friends & family and receive a ",
                ),
                TextSpan(
                    text: "bonus - 15% ",
                    style: TextStyle(
                      color: AppColors.kBlueColor,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: " of the value of contribution",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
              style: TextStyle(fontSize: 14, color: AppColors.textGreyColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5),
              border: Border.all(
                width: 0.25,
                color: AppColors.kGreyColor,
              ),
            ),
            width: double.infinity,
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                const Icon(
                  Icons.link,
                  color: AppColors.kBlackColor,
                ),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(seconds: 2),
                    child: child!,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Clipboard.setData(
                      const ClipboardData(
                          text:
                              'https://demo.themenio.com/ico?ref=7d264f90653733592'),
                    );
                    setState(() {
                      child = clipboardText;
                    });
                    Future.delayed(Duration(seconds: 1), () {
                      setState(() {
                        child = text;
                      });
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: AppColors.kBgBlueColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: const Icon(
                      Icons.copy_outlined,
                      color: AppColors.kGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
