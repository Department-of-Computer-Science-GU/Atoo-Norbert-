import 'package:flutter/foundation.dart';
import '../../core/utils/finger_math.dart';
import '../../widgets/finger_widget.dart';

enum CalcMode { multiply, square, squareRoot }

class CalculatorController extends ChangeNotifier {
  CalcMode mode = CalcMode.multiply;

  int a = 6;
  int b = 6;
  int? result;

  List<FingerState> fingers =
      List.generate(5, (_) => FingerState.unfolded);

  void setMode(CalcMode m) {
    mode = m;
    reset();
  }

  void reset() {
    result = null;
    fingers = List.generate(5, (_) => FingerState.unfolded);
    notifyListeners();
  }

  Future<void> calculate() async {
    reset();

    int folded = 0;

    switch (mode) {
      case CalcMode.multiply:
        folded = FingerMath.foldedCount(a, b);
        break;

      case CalcMode.square:
        folded = FingerMath.squareFoldedCount(a);
        break;

      case CalcMode.squareRoot:
        final root = FingerMath.squareRoot(a);
        if (root == null) return;
        folded = FingerMath.squareFoldedCount(root);
        break;
    }

    for (int i = 0; i < folded && i < fingers.length; i++) {
      await Future.delayed(const Duration(milliseconds: 300));
      fingers[i] = FingerState.folded;
      notifyListeners();
    }

    switch (mode) {
      case CalcMode.multiply:
        result = FingerMath.multiply(a, b);
        break;
      case CalcMode.square:
        result = FingerMath.square(a);
        break;
      case CalcMode.squareRoot:
        result = FingerMath.squareRoot(a);
        break;
    }

    notifyListeners();
  }
}
