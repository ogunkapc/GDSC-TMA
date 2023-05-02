import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_management_app/onboarding/screen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const Onboarding1()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'GDSC TMA',
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
