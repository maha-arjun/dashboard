import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/features/profile/presentation/widgets/profile_details.dart';
import 'package:dashboard/features/profile/presentation/widgets/referral_widget.dart';
import 'package:dashboard/features/profile/presentation/widgets/two_factor_verification_widget.dart';
import 'package:dashboard/responsive_layout.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ResponsiveLayout(
      desktop: Container(),
      tablet: Container(),
      mobile: Padding(
        padding: EdgeInsets.all(size.width * 0.025),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ProfileDetailsWidget(),
            ReferralWidget(),
            TwoFactorVerificationWidget(),
          ],
        ),
      ),
    );
  }
}
