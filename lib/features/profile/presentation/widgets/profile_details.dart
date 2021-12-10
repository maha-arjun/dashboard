import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_controllers.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:dashboard/features/profile/presentation/widgets/profile_details/password_tab.dart';
import 'package:dashboard/features/profile/presentation/widgets/profile_details/profile_data_tab.dart';
import 'package:dashboard/features/profile/presentation/widgets/profile_details/settings_tab.dart';
import 'package:flutter/material.dart';

class ProfileDetailsWidget extends StatefulWidget {
  const ProfileDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileDetailsWidget> createState() => _ProfileDetailsWidgetState();
}

class _ProfileDetailsWidgetState extends State<ProfileDetailsWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Profile Details',
            style: AppTheme.sectionTitleTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.kGreyColor.withOpacity(0.5),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      AppControllers.profileController.jumpToPage(0);
                      setState(() => _currentIndex = 0);
                    },
                    child: SizedBox(
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'PROFILE DATA',
                            style: TextStyle(
                              fontSize: 12,
                              color: _currentIndex == 0
                                  ? AppColors.kBlueColor
                                  : AppColors.textGreyColor,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Visibility(
                            visible: _currentIndex == 0,
                            child: Container(
                              width: 80,
                              height: 2,
                              color: AppColors.kBlueColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      AppControllers.profileController.jumpToPage(1);
                      setState(() => _currentIndex = 1);
                    },
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'SETTINGS',
                            style: TextStyle(
                              fontSize: 12,
                              color: _currentIndex == 1
                                  ? AppColors.kBlueColor
                                  : AppColors.textGreyColor,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Visibility(
                            visible: _currentIndex == 1,
                            child: Container(
                              width: 80,
                              height: 2,
                              color: AppColors.kBlueColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      AppControllers.profileController.jumpToPage(2);
                      setState(() => _currentIndex = 2);
                    },
                    child: SizedBox(
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'PASSWORD',
                            style: TextStyle(
                              fontSize: 12,
                              color: _currentIndex == 2
                                  ? AppColors.kBlueColor
                                  : AppColors.textGreyColor,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Visibility(
                            visible: _currentIndex == 2,
                            child: Container(
                              width: 80,
                              height: 2,
                              color: AppColors.kBlueColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: _currentIndex == 0
                ? (MediaQuery.of(context).size.width > 770 ? 350 : 550)
                : _currentIndex == 1
                    ? 300
                    : MediaQuery.of(context).size.width > 770
                        ? 300
                        : 410,
            child: PageView(
              controller: AppControllers.profileController,
              children: const [
                ProfileDataTab(),
                SettingsTab(),
                PasswordTab(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
