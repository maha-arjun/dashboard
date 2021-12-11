import 'package:dashboard/core/responsive_layout.dart';
import 'package:dashboard/features/dashboard/presentation/widgets/coin_token_conversion_widget.dart';
import 'package:dashboard/features/dashboard/presentation/widgets/download_whitepaper_widget.dart';
import 'package:dashboard/features/buy_tokens/presentation/widgets/token_balance_widget.dart';
import 'package:dashboard/features/dashboard/presentation/widgets/token_calculation_widget.dart';
import 'package:dashboard/features/dashboard/presentation/widgets/token_sale_graph_widget.dart';
import 'package:dashboard/features/dashboard/presentation/widgets/token_sale_progress_widget.dart';
import 'package:dashboard/features/dashboard/presentation/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ResponsiveLayout(
      desktop: SizedBox(
        width: 1200,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //row 1
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    tokenBalanceWidget(context, size),
                    const SizedBox(
                      width: 30,
                    ),
                    coinTokenConversionWidget(size),
                    const SizedBox(width: 0.5),
                    downloadWhitePaperWidget(size)
                  ],
                ),
              ),
              //row 2
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  transactionWidget(size),
                  const SizedBox(
                    width: 30,
                  ),
                  tokenCalculationWidget(size)
                ],
              ),
              //row 3
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tokenSaleGraphWidget(size),
                  const SizedBox(
                    width: 30,
                  ),
                  tokenSaleProgressWidget(size)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      mobile: SizedBox(
        width: 500,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //row 1
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    tokenBalanceWidget(context, size),
                    const SizedBox(
                      height: 30,
                    ),
                    coinTokenConversionWidget(size),
                    const SizedBox(height: 0.5),
                    downloadWhitePaperWidget(size)
                  ],
                ),
              ),
              //row 2
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  transactionWidget(size),
                  const SizedBox(
                    height: 30,
                  ),
                  tokenCalculationWidget(size)
                ],
              ),
              //row 3
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tokenSaleGraphWidget(size),
                  const SizedBox(
                    height: 30,
                  ),
                  tokenSaleProgressWidget(size)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      tablet: SizedBox(
        width: 1200,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //row 1
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    tokenBalanceWidget(context, size),
                    const SizedBox(
                      height: 30,
                    ),
                    coinTokenConversionWidget(size),
                    const SizedBox(height: 0.5),
                    downloadWhitePaperWidget(size)
                  ],
                ),
              ),
              //row 2
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  transactionWidget(size),
                  const SizedBox(
                    height: 30,
                  ),
                  tokenCalculationWidget(size)
                ],
              ),
              //row 3
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tokenSaleGraphWidget(size),
                  const SizedBox(
                    height: 30,
                  ),
                  tokenSaleProgressWidget(size)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
