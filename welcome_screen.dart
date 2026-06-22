import 'package:flutter/foundation.dart';

enum LessonStep { intro, tens, result, complete }

class LessonFlowController extends ChangeNotifier {
  LessonStep step = LessonStep.intro;

  void next() {
    if (step != LessonStep.complete) {
      step = LessonStep.values[step.index + 1];
      notifyListeners();
    }
  }
}
