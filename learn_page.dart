import 'package:flutter/material.dart';
import 'lesson_screen.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learn')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Learn 7 × 8'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LessonScreen(a: 7, b: 8),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Learn 8²'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LessonScreen(a: 8, b: 8),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Learn √64'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LessonScreen(a: 8, b: 8),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
