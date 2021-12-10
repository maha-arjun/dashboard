import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_controllers.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:dashboard/core/widgets/default_textfield.dart';
import 'package:dashboard/features/home/presentation/widgets/menu_indicator.dart';
import 'package:dashboard/features/home/presentation/widgets/menu_option_widget.dart';
import 'package:dashboard/features/profile/presentation/widgets/profile_details/password_tab.dart';
import 'package:dashboard/features/profile/presentation/widgets/profile_details/profile_data_tab.dart';
import 'package:dashboard/features/profile/presentation/widgets/profile_details/settings_tab.dart';
import 'package:flutter/material.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile Details',
            style: AppTheme.sectionTitleTextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: 2,
                color: kGreyColor.withOpacity(0.5),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'PROFILE DATA',
                        style: TextStyle(
                          fontSize: 12,
                          color: kBlueColor,
                          letterSpacing: 1.1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 80,
                        height: 2,
                        color: kBlueColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'SETTINGS',
                        style: TextStyle(
                          fontSize: 12,
                          color: kBlueColor,
                          letterSpacing: 1.1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 80,
                        height: 2,
                        color: kBlueColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'PASSWORD',
                        style: TextStyle(
                          fontSize: 12,
                          color: kBlueColor,
                          letterSpacing: 1.1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 80,
                        height: 2,
                        color: kBlueColor,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          // PageView(
          //   controller: AppControllers.profileController,
          //   children: [
          // ProfileDataTab(),
          SettingsTab(),
          // PasswordTab(),
          //     Container(),
          //     Container(),
          //   ],
          // )
        ],
      ),
    );
  }
}
