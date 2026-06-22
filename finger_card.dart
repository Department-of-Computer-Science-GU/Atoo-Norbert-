import 'package:flutter/material.dart';
import '../../widgets/hand_widget.dart';
import '../../widgets/finger_widget.dart';
import '../../core/utils/finger_math.dart';

class LessonScreen extends StatefulWidget {
  final int a;
  final int b;

  const LessonScreen({super.key, required this.a, required this.b});

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  List<FingerState> fingers =
      List.generate(5, (_) => FingerState.unfolded);
  bool shown = false;

  Future<void> show() async {
    final count = FingerMath.foldedCount(widget.a, widget.b);
    for (int i = 0; i < count; i++) {
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() => fingers[i] = FingerState.folded);
    }
    setState(() => shown = true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.a} × ${widget.b}')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HandWidget(fingers: fingers),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: show,
            child: const Text('Show with Hands'),
          ),
          if (shown)
            Text(
              'Answer = ${FingerMath.multiply(widget.a, widget.b)}',
              style: const TextStyle(fontSize: 26),
            ),
        ],
      ),
    );
  }
}
