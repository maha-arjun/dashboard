import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/features/home/presentation/app_bar.dart';
import 'package:dashboard/features/home/presentation/menu_bar.dart';
import 'package:dashboard/features/home/presentation/widgets/app_drawer.dart';
import 'package:dashboard/features/home/presentation/widgets/menu_indicator.dart';
import 'package:dashboard/features/home/presentation/widgets/menu_option_widget.dart';
import 'package:dashboard/features/profile/presentation/profile_screen.dart';
import 'package:dashboard/responsive_layout.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Home extends GetResponsiveView {
//   @override
//   Widget? builder() {
//     switch (screen.screenType) {
//       case ScreenType.Phone:
//         return Container();
//       case ScreenType.Tablet:
//         return Container();
//       case ScreenType.Desktop:
//         return Container();
//       default:
//         return Container();
//     }
//   }
// }

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
      appBar: !ResponsiveLayout.isDesktop(context)
          ? mobileAppBar(size)
          : PreferredSize(
              preferredSize: Size(size.width, 1000), child: WebAppBar()),
      drawer: const AppDrawer(),
      body: ProfileScreen(),
      // ResponsiveLayout(
      //   mobile: Container(),
      //   tablet: Container(),
      //   desktop: Column(
      //     children: [
      //       MenuBar(),
      //     ],
      //   ),
      // ),
      // bottomNavigationBar: Container(
      //   width: double.infinity,
      //   child: ResponsiveLayout.isMobile(context)
      //       ? Column(
      //           children: [
      //             Row(
      //               children: [
      //                 TextButton(
      //                   onPressed: () {},
      //                   child: Text('Whitepaper'),
      //                 ),
      //               ],
      //             ),
      //             Row(
      //               children: [
      //                 Text('© 2018 TokenWiz'),
      //               ],
      //             )
      //           ],
      //         )
      //       : Row(),
      // ),
    );
  }
}
