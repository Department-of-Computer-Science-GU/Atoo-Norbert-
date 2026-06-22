import 'package:flutter/material.dart';
import '../learn/learn_screen.dart';
import '../calculator/calculator_screen.dart';
import '../games/games_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget tile(BuildContext c, String t, IconData i, Widget w) {
    return ElevatedButton.icon(
      icon: Icon(i, size: 32),
      label: Text(t),
      onPressed: () =>
          Navigator.push(c, MaterialPageRoute(builder: (_) => w)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FingerCalc')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tile(context, 'Learn', Icons.school, const LearnScreen()),
            tile(context, 'Calculator', Icons.calculate, const CalculatorScreen()),
            tile(context, 'Games', Icons.star, const GamesMenu()),
          ],
        ),
      ),
    );
  }
}
