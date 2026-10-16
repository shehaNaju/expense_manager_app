


import 'package:expense_manager_app/screens/HisrtoryScreen.dart';
import 'package:expense_manager_app/screens/ProfileScreen.dart';
import 'package:expense_manager_app/screens/walletScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color appTeal = Color(0xFF32857F);
 Color appBackground = Color(0xFFF8FAFA);
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    // DashboardTab(),
    HistoryTab(),
    WalletTab(),
    ProfileTab(),
  ];

  void _showAddTransaction() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) => const AddTransactionSheet(),
    );
  }


  static const Color teal = Color(0xFF32857F);
  static const Color lightBackground = Color(0xFFF8FAFA);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Good afternoon,',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 4),
              const Text(
                'Sahal Muhammed',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 22),

              // Balance card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: appTeal,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: teal.withAlpha(50),
                      blurRadius: 12,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Total Balance',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      '\$2,548.00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 26),
                    Row(
                      children: [
                        Expanded(
                          child: _balanceItem(
                            icon: Icons.arrow_downward,
                            label: 'Income',
                            amount: '\$1,840.00',
                          ),
                        ),
                        Expanded(
                          child: _balanceItem(
                            icon: Icons.arrow_upward,
                            label: 'Expenses',
                            amount: '\$284.00',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Daily and weekly averages
              Row(
                children: [
                  Expanded(
                    child: _averageCard(
                      'DAILY AVERAGE',
                      '\$1,548.00',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _averageCard(
                      'WEEKLY',
                      '\$548.00',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              // Transaction history heading
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Transactions History',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // Transaction list
              ...transactions.map((transaction) {
                final bool isIncome = transaction['income'];

                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE7F3F1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(
                          transaction['icon'],
                          color: teal,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction['title'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              transaction['subtitle'],
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        transaction['amount'],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: isIncome
                              ? const Color(0xFF16A765)
                              : Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),

      // Floating add button and bottom navigation
  
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTransaction,
        backgroundColor: teal,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        elevation: 5,
        child: const Icon(Icons.add, size: 32),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 12,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 62,
          child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    _navItem(Icons.home_outlined, 'Home', 0),
    _navItem(Icons.history, 'History', 1),
    const SizedBox(width: 48),
    _navItem(
      Icons.account_balance_wallet_outlined,
      'Wallet',
      2,
    ),
    _navItem(Icons.person_outline, 'Profile', 3),
  ],
),
        ),
      ),
    );
  }

  Widget _balanceItem({
    required IconData icon,
    required String label,
    required String amount,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.white70, size: 17),
            const SizedBox(width: 6),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 13,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          amount,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _averageCard(String title, String amount) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
          const SizedBox(height: 12),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              amount,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

   Widget _navItem(IconData icon, String label, int index) {
    final bool selected = _selectedIndex == index;

    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: SizedBox(
          height: 68,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 23,
                color: selected ? appTeal : Colors.grey,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: selected
                      ? FontWeight.w600
                      : FontWeight.normal,
                  color: selected ? appTeal : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class AddTransactionSheet extends StatelessWidget {
  const AddTransactionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          20,
          24,
          20,
          24 + MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add Transaction',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Transaction title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 14),
            const TextField(
              keyboardType: TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: InputDecoration(
                labelText: 'Amount',
                prefixText: '\$ ',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF32857F),
                  foregroundColor: Colors.white,
                ),
                child: const Text('Save Transaction'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
