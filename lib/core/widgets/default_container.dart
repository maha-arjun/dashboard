import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/responsive_layout.dart';
import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  final Widget child;
  const DefaultContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: ResponsiveLayout.isMobile(context)
          ? EdgeInsets.symmetric(horizontal: 20, vertical: 16)
          : EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: child,
    );
  }
}
