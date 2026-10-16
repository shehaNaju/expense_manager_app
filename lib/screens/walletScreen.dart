import 'package:flutter/material.dart';

class WalletTab extends StatefulWidget {

  const WalletTab({super.key});

  @override
  State<WalletTab> createState() => _WalletTabState();
}

class _WalletTabState extends State<WalletTab> {
     Color appTeal = Color(0xFF32857F);
 Color appBackground = Color(0xFFF8FAFA);
 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFA),
      appBar: AppBar(
        title: const Text('My Wallet'),
      ),
      body: const Center(
        child: Text(
          'Your wallet details will appear here',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}