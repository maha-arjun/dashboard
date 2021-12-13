import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:dashboard/features/transactions/data/models/transactions_model.dart';
import 'package:dashboard/features/transactions/presentation/widgets/transaction_details.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/core/widgets/custom_paginated_data_table.dart'
    as pagination_widget;

class UserTransactionsWidget extends StatefulWidget {
  const UserTransactionsWidget({Key? key}) : super(key: key);

  @override
  _UserTransactionsWidgetState createState() => _UserTransactionsWidgetState();
}

class _UserTransactionsWidgetState extends State<UserTransactionsWidget> {
  @override
  Widget build(BuildContext context) {
    final DataTableSource _data = UserTransactionsData(context: context);
    var screenWidth = MediaQuery.of(context).size.width;
    return DefaultContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'User Transactions',
            style: AppTheme.sectionTitleTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: pagination_widget.PaginatedDataTable(
                  headingRowHeight: 40,
                  columnSpacing: 10,
                  columns: screenWidth > 1000
                      ? [
                          dataColumn('TRANX NO'),
                          dataColumn('TOKENS'),
                          dataColumn('AMOUNT'),
                          dataColumn('USD AMOUNT'),
                          dataColumn('FROM'),
                          dataColumn('TYPE'),
                          dataColumn(''),
                        ]
                      : screenWidth < 1000 && screenWidth > 570
                          ? [
                              dataColumn('TRANX NO'),
                              dataColumn('TOKENS'),
                              dataColumn('AMOUNT'),
                              dataColumn('TYPE'),
                              dataColumn(''),
                            ]
                          : [
                              dataColumn('TRANX NO'),
                              dataColumn('TOKENS'),
                              dataColumn('TYPE'),
                              dataColumn(''),
                            ],
                  source: _data,
                  rowsPerPage: 8,
                  showCheckboxColumn: true,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  static DataColumn dataColumn(String title) {
    return DataColumn(
      label: Text(
        title,
        style: AppTheme.labelTextStyle,
      ),
    );
  }
}

class UserTransactionsData extends DataTableSource {
  final BuildContext context;
  UserTransactionsData({
    Key? key,
    required this.context,
  });
  final List<TransactionsModel> _data = userTransactions;

  @override
  DataRow? getRow(int index) {
    var screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 1000
        ? DataRow(cells: [
            tranxNo(index, screenWidth),
            tokens(index, screenWidth),
            amount(index, screenWidth),
            usdAmount(index, screenWidth),
            from(index, screenWidth),
            type(index),
            suffixButton(index),
          ])
        : screenWidth < 1000 && screenWidth > 570
            ? DataRow(cells: [
                tranxNo(index, screenWidth),
                tokens(index, screenWidth),
                amount(index, screenWidth),
                type(index),
                suffixButton(index),
              ])
            : DataRow(cells: [
                tranxNo(index, screenWidth),
                tokens(index, screenWidth),
                type(index),
                suffixButton(index),
              ]);
  }

  DataCell suffixButton(int index) {
    return DataCell(
      InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => const Dialog(
              child: TransactionDetailsDialog(),
            ),
          );
        },
        child: 
        // index == 0
        //     ? Row(
        //         mainAxisSize: MainAxisSize.min,
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         children: [
        //           Container(
        //             height: 30,
        //             width: 80,
        //             decoration: BoxDecoration(
        //               color: AppColors.kBlueColor,
        //               borderRadius: BorderRadius.circular(2.5),
        //             ),
        //             child: Center(
        //               child: Row(
        //                 mainAxisSize: MainAxisSize.min,
        //                 children: const [
        //                   Text(
        //                     'Pay  ',
        //                     style: TextStyle(
        //                       color: AppColors.kWhiteColor,
        //                       fontSize: 12,
        //                     ),
        //                   ),
        //                   Icon(
        //                     Icons.account_balance_wallet_outlined,
        //                     size: 15,
        //                     color: AppColors.kWhiteColor,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //           const SizedBox(
        //             width: 5,
        //           ),
        //           Container(
        //             height: 30,
        //             width: 32,
        //             decoration: BoxDecoration(
        //               color: AppColors.kRedColor.withOpacity(0.25),
        //               borderRadius: BorderRadius.circular(2.5),
        //             ),
        //             child: const Center(
        //               child: Icon(
        //                 Icons.delete_outline,
        //                 color: AppColors.kRedColor,
        //                 size: 16,
        //               ),
        //             ),
        //           ),
        //         ],
        //       )
        //     : 
            Container(
                height: 30,
                width: 32,
                decoration: BoxDecoration(
                  color: AppColors.kBgBlueColor,
                  borderRadius: BorderRadius.circular(2.5),
                ),
                child: Center(
                  child: Icon(
                    _data[index].suffixIcon,
                    color: AppColors.textDarkGreyColor,
                    size: 16,
                  ),
                ),
              ),
      ),
    );
  }

  DataCell type(int index) {
    Color color = _data[index].tranType == 'Purchase'
        ? AppColors.kGreenColor
        : AppColors.kBlueColor;

    return DataCell(
      Container(
        width: 90,
        height: 30,
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(2.5),
          border: Border.all(
            color: color,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            _data[index].tranType,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.textDarkGreyColor,
            ),
          ),
        ),
      ),
    );
  }

  DataCell tokens(int index, double width) {
    return DataCell(
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _data[index].tokenVol,
            style: AppTheme.cellTitleTextStyle(width),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            _data[index].tokenName,
            style: AppTheme.cellSubtitleTextStyle(width),
          ),
        ],
      ),
    );
  }

  DataCell amount(int index, double width) {
    return DataCell(
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _data[index].tranAmount,
            style: AppTheme.cellTitleTextStyle(width),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            'USDT',
            style: AppTheme.cellSubtitleTextStyle(width),
          ),
        ],
      ),
    );
  }

  DataCell usdAmount(int index, double width) {
    return DataCell(
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _data[index].tranAmount,
            style: AppTheme.cellTitleTextStyle(width),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            'USD',
            style: AppTheme.cellSubtitleTextStyle(width),
          ),
        ],
      ),
    );
  }

  DataCell from(int index, double width) {
    return DataCell(
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1F1T....4XQX',
            style: AppTheme.cellTitleTextStyle(width),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            AppTheme.dateFormat.format(_data[index].tranDateTime).toString(),
            style: AppTheme.cellSubtitleTextStyle(width),
          ),
        ],
      ),
    );
  }

  DataCell tranxNo(int index, double width) {
    List colors = [
      AppColors.kYellowColor,
      AppColors.kGreenColor,
      AppColors.kRedColor,
    ];
    return DataCell(
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              border: Border.all(
                color: colors[index % 3],
                width: 1.0,
              ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                _data[index].prefixIcon,
                color: colors[index % 3],
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _data[index].tranId,
                style: AppTheme.cellTitleTextStyle(width),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                AppTheme.dateFormat
                    .format(_data[index].tranDateTime)
                    .toString(),
                style: AppTheme.cellSubtitleTextStyle(width),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
