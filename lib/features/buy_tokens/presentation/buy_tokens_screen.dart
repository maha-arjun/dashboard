import 'package:dashboard/features/buy_tokens/presentation/widgets/choose_currency_widget.dart';
import 'package:dashboard/features/dashboard/presentation/widgets/coin_token_conversion_widget.dart';
import 'package:dashboard/features/dashboard/presentation/widgets/download_whitepaper_widget.dart';
import 'package:dashboard/features/buy_tokens/presentation/widgets/pre_token_sales_widget.dart';
import 'package:dashboard/features/buy_tokens/presentation/widgets/token_balance_widget.dart';
import 'package:dashboard/features/buy_tokens/presentation/widgets/wallet_address_widget.dart';
import 'package:flutter/material.dart';

class BuyTokensScreen extends StatefulWidget {
  const BuyTokensScreen({Key? key}) : super(key: key);

  @override
  _BuyTokensScreenState createState() => _BuyTokensScreenState();
}

class _BuyTokensScreenState extends State<BuyTokensScreen> {
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
                  chooseCurrencyWidget(),
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
