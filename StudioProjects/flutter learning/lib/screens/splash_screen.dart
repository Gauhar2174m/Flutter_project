import 'dart:async'; // Import this for Timer
import 'package:flutter/material.dart';
import 'package:untitled/screens/Intropage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start the timer for 2 seconds
    Timer(Duration(seconds: 2), () {
      // Navigate to the HomePage after the timer completes
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Intropage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'Hello',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
