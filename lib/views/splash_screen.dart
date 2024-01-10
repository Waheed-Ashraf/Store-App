import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:store_app/widgets/bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMainScreen();
  }

  Future<void> _navigateToMainScreen() async {
    await Future.delayed(
        const Duration(seconds: 9)); // Adjust the delay as needed
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const BottomNavBar()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/lottie/Animation.json',
          width: 210,
          height: 210,
          fit: BoxFit.contain,
          repeat: true, // Set to false to play the animation only once
          reverse: false,
        ),
      ),
    );
  }
}
