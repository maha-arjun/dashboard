import 'package:dashboard/features/dashboard/presentation/widgets/coin_token_conversion_widget.dart';
import 'package:dashboard/features/dashboard/presentation/widgets/download_whitepaper_widget.dart';
import 'package:dashboard/features/dashboard/presentation/widgets/token_balance_widget.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tokenBalanceWidget(),
                  const SizedBox(width: 30,),
                  coinTokenConversionWidget(),
                  const SizedBox(width: 0.5),
                  downloadWhitePaperWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
