import 'package:expense_manager_app/screens/onboading.dart';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    _controller.forward();

    // Navigate to onboarding after 3 seconds.
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;

    
      Navigator.pushReplacement(
         context,
        MaterialPageRoute(
           builder: (_) => const OnboardingScreen(),
        ),
       );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF58AFA9),
      body: SizedBox.expand(
        child: Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: const Text(
              'Expenzia',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: -0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

