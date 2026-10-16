import 'package:flutter/material.dart';

class TransactionModel {
  final String title;
  final String subtitle;
  final String amount;
  final IconData icon;
  final bool income;

   TransactionModel({
    required this.title ,
    required this.subtitle ,
    required this.amount ,
    required this.icon,
    required this.income,
  });
  final List<Map<String, dynamic>> transactions = [
    {
      'title': 'Upwork',
      'subtitle': 'Today',
      'amount': '+ \$850.00',
      'icon': Icons.work_outline,
      'income': true,
    },
    {
      'title': 'Transfer',
      'subtitle': 'Yesterday',
      'amount': '- \$85.00',
      'icon': Icons.swap_horiz,
      'income': false,
    },
    {
      'title': 'Paypal',
      'subtitle': 'Jan 30, 2026',
      'amount': '+ \$1,406.00',
      'icon': Icons.account_balance_wallet_outlined,
      'income': true,
    },
  ];
}