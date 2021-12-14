import 'package:flutter/material.dart';

class TransactionsModel {
  final String tranId;
  final DateTime tranDateTime;
  final String tokenName;
  final String tokenVol;
  final String tranAmount;
  final String tranType;
  final String gateway;
  // final String fromAddress;
  // final String toAddress;
  // final String txHash;
  final IconData suffixIcon;
  final IconData prefixIcon;

  TransactionsModel({
    required this.tranId,
    required this.tranDateTime,
    required this.tokenName,
    required this.tokenVol,
    required this.tranAmount,
    required this.tranType,
    required this.gateway,
    required this.suffixIcon,
    required this.prefixIcon,
  });
}

List<TransactionsModel> userTransactions = [
  TransactionsModel(
    tranId: 'TNX1002',
    tranDateTime: DateTime.now(),
    tokenName: 'TWZ',
    tokenVol: '18,759',
    tranAmount: '50.00',
    tranType: 'Purchase',
    gateway: 'ETH',
    suffixIcon: Icons.more_horiz,
    prefixIcon: Icons.warning,
  ),
  TransactionsModel(
    tranId: 'TNX1003',
    tranDateTime: DateTime.now(),
    tokenName: 'ADA',
    tokenVol: '1,092',
    tranAmount: '50.00',
    tranType: 'Purchase',
    gateway: 'ETH',
    suffixIcon: Icons.remove_red_eye_outlined,
    prefixIcon: Icons.done,
  ),
  TransactionsModel(
    tranId: 'TNX1002',
    tranDateTime: DateTime.now(),
    tokenName: 'TWZ',
    tokenVol: '18,759',
    tranAmount: '50.00',
    tranType: 'Purchase',
    gateway: 'ETH',
    suffixIcon: Icons.remove_red_eye_outlined,
    prefixIcon: Icons.close,
  ),
  TransactionsModel(
    tranId: 'TNX1002',
    tranDateTime: DateTime.now(),
    tokenName: 'TWZ',
    tokenVol: '18,759',
    tranAmount: '50.00',
    tranType: 'Bonus',
    gateway: 'ETH',
    suffixIcon: Icons.remove_red_eye_outlined,
    prefixIcon: Icons.warning,
  ),
  TransactionsModel(
    tranId: 'TNX1003',
    tranDateTime: DateTime.now(),
    tokenName: 'ADA',
    tokenVol: '1,092',
    tranAmount: '50.00',
    tranType: 'Purchase',
    gateway: 'ETH',
    suffixIcon: Icons.remove_red_eye_outlined,
    prefixIcon: Icons.done,
  ),
  TransactionsModel(
    tranId: 'TNX1002',
    tranDateTime: DateTime.now(),
    tokenName: 'TWZ',
    tokenVol: '18,759',
    tranAmount: '50.00',
    tranType: 'Purchase',
    gateway: 'ETH',
    suffixIcon: Icons.remove_red_eye_outlined,
    prefixIcon: Icons.close,
  ),
  TransactionsModel(
    tranId: 'TNX1002',
    tranDateTime: DateTime.now(),
    tokenName: 'TWZ',
    tokenVol: '18,759',
    tranAmount: '50.00',
    tranType: 'Bonus',
    gateway: 'ETH',
    suffixIcon: Icons.remove_red_eye_outlined,
    prefixIcon: Icons.warning,
  ),
  TransactionsModel(
    tranId: 'TNX1003',
    tranDateTime: DateTime.now(),
    tokenName: 'ADA',
    tokenVol: '1,092',
    tranAmount: '50.00',
    tranType: 'Purchase',
    gateway: 'ETH',
    suffixIcon: Icons.remove_red_eye_outlined,
    prefixIcon: Icons.done,
  ),
  TransactionsModel(
    tranId: 'TNX1002',
    tranDateTime: DateTime.now(),
    tokenName: 'TWZ',
    tokenVol: '18,759',
    tranAmount: '50.00',
    tranType: 'Purchase',
    gateway: 'ETH',
    suffixIcon: Icons.remove_red_eye_outlined,
    prefixIcon: Icons.close,
  ),
];
