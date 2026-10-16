// import 'package:expense_manager_app/screens/HisrtoryScreen.dart';
// import 'package:expense_manager_app/screens/ProfileScreen.dart';
// import 'package:expense_manager_app/screens/walletScreen.dart';
// import 'package:flutter/material.dart';

// const Color appTeal = Color(0xFF32857F);
// const Color appBackground = Color(0xFFF8FAFA);

// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({super.key});

//   @override
//   State<BottomNavigation> createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = const [
//     HistoryScreen(),
//     WalletScreen(),
//     ProfileScreen(),
//   ];

//   void _openAddTransaction() {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       backgroundColor: Colors.white,
//       builder: (context) => const AddTransactionSheet(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: appBackground,

//       // Displays the selected tab.
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: _pages,
//       ),

//       // Center + button.
//       floatingActionButton: FloatingActionButton(
//         onPressed: _openAddTransaction,
//         backgroundColor: appTeal,
//         foregroundColor: Colors.white,
//         elevation: 3,
//         shape: const CircleBorder(),
//         child: const Icon(Icons.add, size: 30),
//       ),
//       floatingActionButtonLocation:
//           FloatingActionButtonLocation.centerDocked,

//       // Bottom navigation bar.
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.white,
//         elevation: 10,
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 8,
//         padding: EdgeInsets.zero,
//         child: SizedBox(
//           height: 68,
//           child: Row(
//             children: [
//               _navItem(Icons.home_rounded, 'Home', 0),
//               _navItem(Icons.history_rounded, 'History', 1),
//               const Expanded(child: SizedBox()),
//               _navItem(
//                 Icons.account_balance_wallet_rounded,
//                 'Wallet',
//                 2,
//               ),
//               _navItem(Icons.person_rounded, 'Profile', 3),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _navItem(IconData icon, String label, int index) {
//     final bool selected = _selectedIndex == index;

//     return Expanded(
//       child: InkWell(
//         onTap: () {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         child: SizedBox(
//           height: 68,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 icon,
//                 size: 23,
//                 color: selected ? appTeal : Colors.grey,
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 label,
//                 style: TextStyle(
//                   fontSize: 11,
//                   fontWeight: selected
//                       ? FontWeight.w600
//                       : FontWeight.normal,
//                   color: selected ? appTeal : Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }