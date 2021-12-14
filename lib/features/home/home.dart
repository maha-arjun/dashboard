import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_controllers.dart';
import 'package:dashboard/features/buy_tokens/presentation/buy_tokens_screen.dart';
import 'package:dashboard/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:dashboard/features/home/presentation/app_bar.dart';
import 'package:dashboard/features/home/presentation/widgets/app_drawer.dart';
import 'package:dashboard/core/responsive_layout.dart';
import 'package:dashboard/features/ico_distribution/presentation/ico_distribution_screen.dart';
import 'package:dashboard/features/kyc/presentation/pages/kyc_screen.dart';
import 'package:dashboard/features/pages/presentation/pages/pages_screen.dart';
import 'package:dashboard/features/profile/presentation/pages/profile_screen.dart';
import 'package:dashboard/features/transactions/presentation/pages/transactions_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.kBgBlueColor,
      appBar: !ResponsiveLayout.isDesktop(context)
          ? mobileAppBar(size)
          : PreferredSize(
              preferredSize: Size(size.width, 114), child: const WebAppBar()),
      drawer: const AppDrawer(),
      body: Stack(
        children: [
          PageView(
            controller: AppControllers.homeController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              DashBoardScreen(),
              BuyTokensScreen(),
              IcoDistributionScreen(),
              TransactionsScreen(),
              ProfileScreen(),
              PagesScreen(),
            ],
          ),
          /*Container(
            height: 380,
            width: 215,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //text
                      Text(
                        'Dashboard',
                        style: TextStyle(
                          color: AppColors.kBlueColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      //icon
                      Icon(Icons.arrow_forward_ios, size: 15, color: AppColors.textDarkGreyColor,)
                    ],
                  ),
                )
              ],
            ),
          )*/
        ],
      ),
    );
  }
}
