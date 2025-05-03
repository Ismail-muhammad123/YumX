import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(secondaryColor),
      body: Column(
        children: [SizedBox(height: 100), Text("Yum X"), Text("Log")],
      ),
    );
  }
}
