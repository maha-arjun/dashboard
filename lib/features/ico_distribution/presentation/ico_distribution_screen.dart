import 'package:dashboard/features/ico_distribution/presentation/widgets/invite_widget.dart';
import 'package:flutter/material.dart';

import '../../buy_tokens/presentation/widgets/pre_token_sales_widget.dart';
import '../../buy_tokens/presentation/widgets/token_balance_widget.dart';
import '../../buy_tokens/presentation/widgets/wallet_address_widget.dart';
import 'widgets/ico_distrubtion_widget.dart';

class IcoDistributionScreen extends StatefulWidget {
  const IcoDistributionScreen({Key? key}) : super(key: key);

  @override
  _IcoDistributionScreenState createState() => _IcoDistributionScreenState();
}

class _IcoDistributionScreenState extends State<IcoDistributionScreen> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      icoDistrubtionWidget(),
                      const SizedBox(
                        height: 30,
                      ),
                      inviteWidget(),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      walletAddressWidget(),
                      const SizedBox(
                        height: 30,
                      ),
                      tokenBalanceWidget(context, MediaQuery.of(context).size),
                      const SizedBox(
                        height: 30,
                      ),
                      preTokenSalesWidget(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
