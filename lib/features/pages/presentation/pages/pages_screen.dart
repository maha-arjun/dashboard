import 'package:dashboard/core/app_controllers.dart';
import 'package:dashboard/features/kyc/presentation/pages/kyc_completed_screen.dart';
import 'package:dashboard/features/kyc/presentation/pages/kyc_form_screen.dart';
import 'package:dashboard/features/kyc/presentation/pages/kyc_screen.dart';
import 'package:dashboard/features/pages/presentation/pages/pages_screen_temp.dart';
import 'package:flutter/material.dart';

class PagesScreen extends StatefulWidget {
  const PagesScreen({Key? key}) : super(key: key);

  @override
  _PagesScreenState createState() => _PagesScreenState();
}

class _PagesScreenState extends State<PagesScreen> {

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: AppControllers.kycController,
      children: const [
        PagesScreenTemp(),
        KYCScreen(),
        KYCCCompletedScreen(),
        KYCFormScreen()
      ],
    );
  }
}
