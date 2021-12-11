import 'package:dashboard/core/responsive_layout.dart';
import 'package:dashboard/features/transactions/presentation/widgets/user_transactions_widget.dart';
import 'package:flutter/material.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  _TransactionsScreenState createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          SizedBox(
            height: ResponsiveLayout.isMobile(context) ? 15 : 45,
          ),
          ResponsiveLayout(
            mobile: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: UserTransactionsWidget(),
            ),
            tablet: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: const UserTransactionsWidget(),
            ),
            desktop: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.13),
              child: const UserTransactionsWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
