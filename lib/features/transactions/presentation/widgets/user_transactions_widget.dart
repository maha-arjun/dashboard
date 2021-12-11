import 'dart:js';

import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_theme.dart';
import 'package:dashboard/core/widgets/default_container.dart';
import 'package:dashboard/features/transactions/data/models/transactions_model.dart';
import 'package:flutter/material.dart';

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
                child: PaginatedDataTable(
                  headingRowHeight: 40,
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
                  showCheckboxColumn: false,
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
            tranxNo(index),
            tokens(index),
            amount(index),
            usdAmount(index),
            from(index),
            type(index),
            suffixButton(index),
          ])
        : screenWidth < 1000 && screenWidth > 570
            ? DataRow(cells: [
                tranxNo(index),
                tokens(index),
                amount(index),
                type(index),
                suffixButton(index),
              ])
            : DataRow(cells: [
                tranxNo(index),
                tokens(index),
                type(index),
                suffixButton(index),
              ]);
  }

  DataCell suffixButton(int index) {
    return DataCell(
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
    );
  }

  DataCell type(int index) {
    return DataCell(
      Container(
        width: 90,
        height: 30,
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(2.5),
          border: Border.all(
            color: AppColors.kBlueColor,
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

  DataCell tokens(int index) {
    return DataCell(
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _data[index].tokenVol,
            style: AppTheme.cellTitleTextStyle,
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            _data[index].tokenName,
            style: AppTheme.cellSubtitleTextStyle,
          ),
        ],
      ),
    );
  }

  DataCell amount(int index) {
    return DataCell(
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _data[index].tranAmount,
            style: AppTheme.cellTitleTextStyle,
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            'USDT',
            style: AppTheme.cellSubtitleTextStyle,
          ),
        ],
      ),
    );
  }

  DataCell usdAmount(int index) {
    return DataCell(
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _data[index].tranAmount,
            style: AppTheme.cellTitleTextStyle,
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            'USD',
            style: AppTheme.cellSubtitleTextStyle,
          ),
        ],
      ),
    );
  }

  DataCell from(int index) {
    return DataCell(
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '1F1T....4XQX',
            style: AppTheme.cellTitleTextStyle,
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            _data[index].tranDateTime.toString(),
            style: AppTheme.cellSubtitleTextStyle,
          ),
        ],
      ),
    );
  }

  DataCell tranxNo(int index) {
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
                color: AppColors.kBlueColor,
                width: 1.0,
              ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                _data[index].prefixIcon,
                color: AppColors.kBlueColor,
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
                style: AppTheme.cellTitleTextStyle,
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                _data[index].tranDateTime.toString(),
                style: AppTheme.cellSubtitleTextStyle,
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
