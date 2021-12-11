import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_controllers.dart';
import 'package:dashboard/features/buy_tokens/presentation/buy_tokens_screen.dart';
import 'package:dashboard/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:dashboard/features/home/presentation/app_bar.dart';
import 'package:dashboard/features/home/presentation/widgets/app_drawer.dart';
import 'package:dashboard/core/responsive_layout.dart';
import 'package:dashboard/features/ico_distribution/presentation/ico_distribution_screen.dart';
import 'package:dashboard/features/profile/presentation/pages/profile_screen.dart';
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
      body: PageView(
        controller: AppControllers.homeController,
        children: const [
          DashBoardScreen(),
          BuyTokensScreen(),
          IcoDistributionScreen(),
          Center(child: Text('transactions')),
          ProfileScreen(),
          Center(child: Text('Pages')),
        ],
      ),
    );
  }
}
