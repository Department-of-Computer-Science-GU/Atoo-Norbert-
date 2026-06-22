import 'package:flutter/foundation.dart';
import '../../core/utils/finger_math.dart';

class MiniGameController extends ChangeNotifier {
  final int a;
  final int b;

  MiniGameController(this.a, this.b);

  bool check(int folded) {
    return folded == FingerMath.foldedCount(a, b);
  }
}
