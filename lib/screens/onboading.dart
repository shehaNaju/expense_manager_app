
import 'package:expense_manager_app/screens/HisrtoryScreen.dart';
import 'package:expense_manager_app/screens/HomePage.dart';
import 'package:expense_manager_app/screens/walletScreen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static const Color teal = Color(0xFF4F9D98);
  static const Color mint = Color(0xFFEAF7F5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Illustration section
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: mint,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Decorative circles
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.5,
                        ),
                      ),
                    ),
                    Container(
                      width: 230,
                      height: 230,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.5,
                        ),
                      ),
                    ),

                    // Main illustration placeholder
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '🪙',
                          style: TextStyle(fontSize: 55),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '🧑🏻‍💼',
                          style: TextStyle(fontSize: 110),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '💰       📊',
                          style: TextStyle(fontSize: 42),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Text and button section
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Spend Smarter\nSave More',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 27,
                        height: 1.05,
                        fontWeight: FontWeight.bold,
                        color: teal,
                      ),
                    ),

                    const Text(
                      'Track your expenses, set budgets\n'
                      'and achieve your financial goals\n'
                      'with ease',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.5,
                        color: Color(0xFF64748B),
                      ),
                    ),

                    // Page indicator
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: teal,
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Color(0xFFD6E3E3),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Color(0xFFD6E3E3),
                        ),
                      ],
                    ),

                    // Get Started button
                    SizedBox(
                      width: double.infinity,
                      height: 54,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                          // Navigate to your next screen here.
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: teal,
                          foregroundColor: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
