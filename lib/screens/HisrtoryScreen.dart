import 'package:expense_manager_app/widgets/TransactionTile.dart';
import 'package:flutter/material.dart';

class HistoryTab extends StatefulWidget {
  const HistoryTab({super.key});

  @override
  State<HistoryTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> {
  @override
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFA),
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: const Center(
        child: Text(
          'Your transactions will appear here',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}