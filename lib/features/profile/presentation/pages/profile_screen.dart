import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/features/profile/presentation/widgets/account_status_widget.dart';
import 'package:dashboard/features/profile/presentation/widgets/identity_verification_widget.dart';
import 'package:dashboard/features/profile/presentation/widgets/profile_details.dart';
import 'package:dashboard/features/profile/presentation/widgets/referral_widget.dart';
import 'package:dashboard/features/profile/presentation/widgets/two_factor_verification_widget.dart';
import 'package:dashboard/core/responsive_layout.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveLayout(
            desktop: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ProfileDetailsWidget(),
                          SizedBox(
                            height: 30,
                          ),
                          TwoFactorVerificationWidget(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          AccountStatusWidget(),
                          SizedBox(
                            height: 30,
                          ),
                          ReferralWidget(),
                          SizedBox(
                            height: 30,
                          ),
                          IdentityVerificationWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            tablet: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 45),
                  ProfileDetailsWidget(),
                  SizedBox(height: 30),
                  TwoFactorVerificationWidget(),
                  SizedBox(height: 30),
                  AccountStatusWidget(),
                  SizedBox(height: 30),
                  ReferralWidget(),
                  SizedBox(height: 30),
                  IdentityVerificationWidget(),
                ],
              ),
            ),
            mobile: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ProfileDetailsWidget(),
                  SizedBox(height: 15),
                  TwoFactorVerificationWidget(),
                  SizedBox(height: 15),
                  AccountStatusWidget(),
                  SizedBox(height: 15),
                  ReferralWidget(),
                  SizedBox(height: 15),
                  IdentityVerificationWidget(),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
