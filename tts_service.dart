import 'package:flutter/material.dart';
import 'build_answer_game.dart';

class GamesMenu extends StatelessWidget {
  const GamesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Games')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Build the Answer'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const BuildAnswerGame(),
              ),
            );
          },
        ),
      ),
    );
  }
}
