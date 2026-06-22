import 'dart:math';
import 'package:flutter/material.dart';
import '../../widgets/finger_widget.dart';
import '../../core/utils/finger_math.dart';
import '../../core/services/audio_service.dart';

enum GameType { multiply, square }

class BuildAnswerGame extends StatefulWidget {
  const BuildAnswerGame({super.key});

  @override
  State<BuildAnswerGame> createState() => _BuildAnswerGameState();
}

class _BuildAnswerGameState extends State<BuildAnswerGame> {
  final Random _rand = Random();

  // -----------------------------
  // GAME STATE
  // -----------------------------
  late GameType gameType;
  late int a;
  late int b; // ignored for square

  List<FingerState> fingers =
      List.generate(5, (_) => FingerState.unfolded);

  @override
  void initState() {
    super.initState();
    _newRound();
  }

  void _newRound() {
    // reset fingers
    fingers = List.generate(5, (_) => FingerState.unfolded);

    // randomly choose game type
    gameType = _rand.nextBool() ? GameType.multiply : GameType.square;

    // choose numbers in safe P4 range
    a = 6 + _rand.nextInt(5); // 6–10
    b = 6 + _rand.nextInt(5); // 6–10 (only for multiply)

    setState(() {});
  }

  // -----------------------------
  // LOGIC
  // -----------------------------
  int get correctFolded {
    if (gameType == GameType.square) {
      return FingerMath.squareFoldedCount(a);
    }
    return FingerMath.foldedCount(a, b);
  }

  String get problemText {
    if (gameType == GameType.square) return '$a²';
    return '$a × $b';
  }

  void toggleFinger(int index) {
    AudioService.instance.playTap(); // soft UI tap
    setState(() {
      fingers[index] = fingers[index] == FingerState.folded
          ? FingerState.unfolded
          : FingerState.folded;
    });
  }

  void checkAnswer() {
    final foldedCount =
        fingers.where((f) => f == FingerState.folded).length;

    final isCorrect = foldedCount == correctFolded;

    if (isCorrect) {
      AudioService.instance.playTap(); // replace with success sound later
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(isCorrect ? 'Well done!' : 'Try again'),
        content: Text(
          isCorrect
              ? 'You used your fingers correctly.'
              : 'Adjust the folded fingers and try again.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              if (isCorrect) _newRound();
            },
            child: Text(isCorrect ? 'Next' : 'OK'),
          ),
        ],
      ),
    );
  }

  // -----------------------------
  // UI
  // -----------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Build the Answer')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // PROBLEM DISPLAY
          Text(
            problemText,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 24),

          // FINGERS
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              fingers.length,
              (i) => GestureDetector(
                onTap: () => toggleFinger(i),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: FingerWidget(state: fingers[i]),
                ),
              ),
            ),
          ),

          const SizedBox(height: 32),

          // CHECK
          ElevatedButton(
            onPressed: checkAnswer,
            child: const Text('Check'),
          ),
        ],
      ),
    );
  }
}
