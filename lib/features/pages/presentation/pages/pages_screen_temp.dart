import 'package:dashboard/core/app_controllers.dart';
import 'package:flutter/material.dart';

class PagesScreenTemp extends StatefulWidget {
  const PagesScreenTemp({Key? key}) : super(key: key);

  @override
  _PagesScreenTempState createState() => _PagesScreenTempState();
}

class _PagesScreenTempState extends State<PagesScreenTemp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: () => AppControllers.kycController.jumpToPage(1), child: const Text('kyc pending')),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: () => AppControllers.kycController.jumpToPage(2), child: const Text('kyc completed')),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: () => AppControllers.kycController.jumpToPage(2), child: const Text('kyc form')),
      ],
    );
  }
}
