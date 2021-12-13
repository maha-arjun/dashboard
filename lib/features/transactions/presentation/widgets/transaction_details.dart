import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:dashboard/features/transactions/presentation/widgets/transaction_details/transaction_details_widget.dart';
import 'package:flutter/material.dart';

class TransactionDetailsDialog extends StatelessWidget {
  const TransactionDetailsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth >= 1000
          ? 880
          : (screenWidth > 770 && screenWidth < 1000)
              ? 740
              : double.infinity,
      child: Stack(
        children: [
          DefaultContainer(
            child: SingleChildScrollView(
              // controller: controller,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Transaction Details
                  const Text(
                    'Transaction Details',
                    style: AppTheme.sectionTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  section1(screenWidth),
                  //Transaction Info
                  TransactionDetailsWidget.sectionTitle('TRANSACTION INFO'),
                  section2(screenWidth),
                  //Token Details
                  TransactionDetailsWidget.sectionTitle('TOKEN DETAILS'),
                  section3(screenWidth),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.close,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget section3(double screenWidth) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: AppColors.textGreyColor,
        ),
        borderRadius: BorderRadius.circular(2.5),
      ),
      child: screenWidth > 770
          ? tabRowWidget2()
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: mobileTokenDetails(),
            ),
    );
  }

  Widget section2(double screenWidth) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: AppColors.textGreyColor,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: screenWidth > 770
            ? tabTransactionInfo()
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: mobileTransactionInfo(),
              ));
  }

  Widget mobileTokenDetails() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Stage Name',
          child: const Text('ICO Phase 3',
              style: TransactionDetailsWidget.boldText),
        ),
        TransactionDetailsWidget.divider,
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Contribution',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('1.000 ETH ', style: TransactionDetailsWidget.boldText),
              Text(' \$2540.65'),
            ],
          ),
        ),
        TransactionDetailsWidget.divider,
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Token Added To',
          child: const Text('UD1020001 - infoicox@gmail..com',
              style: TransactionDetailsWidget.boldText),
        ),
        TransactionDetailsWidget.divider,
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Token (T)',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('4,780.00'), Text('(4,780 * 1)')],
          ),
        ),
        TransactionDetailsWidget.divider,
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Bonus Tokens (B)',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('956.00'), Text('(956 * 1)')],
          ),
        ),
        TransactionDetailsWidget.divider,
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Total Tokens',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('5,736.00', style: TransactionDetailsWidget.boldText),
              Text('(T+B)')
            ],
          ),
        ),
      ],
    );
  }

  Widget mobileTransactionInfo() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Transaction Type',
          child:
              const Text('Purchase', style: TransactionDetailsWidget.boldText),
        ),
        TransactionDetailsWidget.divider,
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Payment Gateway',
          child: const Text('Ethereum - Offline Payment',
              style: TransactionDetailsWidget.boldText),
        ),
        TransactionDetailsWidget.divider,
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Deposit From',
          child: const Text('0xa87d264f935920005810653734156d3342d5c385',
              style: TransactionDetailsWidget.boldText),
        ),
        TransactionDetailsWidget.divider,
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Tx Hash',
          child: const Text(
              'Tx156d3342d5c87d264f9359200xa058106537340385c87d264f93'),
        ),
        TransactionDetailsWidget.divider,
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Deposit To',
          child: const Text('0xa058106537340385156d3342d5c87d264f935920'),
        ),
        TransactionDetailsWidget.divider,
        TransactionDetailsWidget.mobileColumnWidget(
          title: 'Details',
          child: const Text('Token Purchase'),
        ),
      ],
    );
  }

  Widget tabTransactionInfo() {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Transaction Type'),
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Payment Gateway'),
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Deposit From'),
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Tx Hash'),
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Deposit To'),
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Details'),
                ],
              ),
            ),
          ),
          TransactionDetailsWidget.verticalDivider,
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Purchase',
                      style: TransactionDetailsWidget.boldText),
                ),
                TransactionDetailsWidget.divider,
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Ethereum - Offline Payment',
                      style: TransactionDetailsWidget.boldText),
                ),
                TransactionDetailsWidget.divider,
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('0xa87d264f935920005810653734156d3342d5c385',
                      style: TransactionDetailsWidget.boldText),
                ),
                TransactionDetailsWidget.divider,
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                      'Tx156d3342d5c87d264f9359200xa058106537340385c87d264f93'),
                ),
                TransactionDetailsWidget.divider,
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('0xa058106537340385156d3342d5c87d264f935920'),
                ),
                TransactionDetailsWidget.divider,
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Token Purchase'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget tabRowWidget2() {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Stage Name'),
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Contribution'),
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Token Added To'),
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Token (T)'),
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Bonus Tokens (B)'),
                  TransactionDetailsWidget.transactionInfoSubtitleText(
                      'Total Tokens'),
                ],
              ),
            ),
          ),
          TransactionDetailsWidget.verticalDivider,
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('ICO Phase 3',
                      style: TransactionDetailsWidget.boldText),
                ),
                TransactionDetailsWidget.divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('1.000 ETH ',
                          style: TransactionDetailsWidget.boldText),
                      Text(' \$2540.65'),
                    ],
                  ),
                ),
                TransactionDetailsWidget.divider,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('UD1020001 - infoicox@gmail..com',
                      style: TransactionDetailsWidget.boldText),
                ),
                TransactionDetailsWidget.divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text('4,780.00'), Text('(4,780 * 1)')],
                  ),
                ),
                TransactionDetailsWidget.divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text('956.00'), Text('(956 * 1)')],
                  ),
                ),
                TransactionDetailsWidget.divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('5,736.00',
                          style: TransactionDetailsWidget.boldText),
                      Text('(T+B)')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget section1(double screenWidth) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: AppColors.textGreyColor,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: screenWidth > 770
          ? tabTransactionDetailsSection()
          : mobileTransactionDetailsSection(),
    );
  }

  Row tabTransactionDetailsSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TransactionDetailsWidget.transactionDetailsSubtitleText(
                  'Tranx Date'),
              const SizedBox(
                height: 6,
              ),
              const Text('24 Jul, 2018 10:11PM'),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TransactionDetailsWidget.transactionDetailsSubtitleText(
                  'Tranx Status'),
              const SizedBox(
                height: 6,
              ),
              TransactionDetailsWidget.statusIndicator(),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TransactionDetailsWidget.transactionDetailsSubtitleText(
                  'Tranx Approved Note'),
              const SizedBox(
                height: 6,
              ),
              const Text('By Admin at 24 Jul, 2018 10:12PM'),
            ],
          ),
        )
      ],
    );
  }

  Widget mobileTransactionDetailsSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionDetailsWidget.transactionDetailsSubtitleText('Tranx Date'),
        const SizedBox(
          height: 6,
        ),
        const Text('24 Jul, 2018 10:11PM'),
        const SizedBox(
          height: 20,
        ),
        TransactionDetailsWidget.transactionDetailsSubtitleText('Tranx Status'),
        const SizedBox(
          height: 6,
        ),
        TransactionDetailsWidget.statusIndicator(),
        const SizedBox(
          height: 20,
        ),
        TransactionDetailsWidget.transactionDetailsSubtitleText(
            'Tranx Approved Note'),
        const SizedBox(
          height: 6,
        ),
        const Text('By Admin at 24 Jul, 2018 10:12PM'),
      ],
    );
  }
}
