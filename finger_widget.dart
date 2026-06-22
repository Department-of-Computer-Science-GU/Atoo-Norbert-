import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'views/dashboard.dart';
import 'views/welcome_screen.dart';

void main() {
  runApp(const FingerCalcApp());
}

class FingerCalcApp extends StatelessWidget {
  const FingerCalcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FingerCalc',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const WelcomeScreen(),
      routes: {
        '/welcome': (_) => const WelcomeScreen(),
        '/dashboard': (_) => const MainScreen(),
      },
    );
  }
}

  // static const String apiKey = "AIzaSyDPFBhljh0j0-A2j8BL-tLK9POVIeJ32GA";
