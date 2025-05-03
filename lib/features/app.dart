import 'package:flutter/material.dart';
import 'screens/authentication/login_screen.dart';
import 'screens/home/home_screen.dart';
import '../../core/di/service_locator.dart';
import '../../features/auth/auth_service.dart';

class UserApp extends StatelessWidget {
  const UserApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = sl<AuthService>();
    return MaterialApp(
      title: 'Food User App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: authService.isLoggedIn ? const HomeScreen() : const LoginScreen(),
    );
  }
}
