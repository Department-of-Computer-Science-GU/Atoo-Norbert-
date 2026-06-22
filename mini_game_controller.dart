class FingerMath {
  // -----------------------------
  // MULTIPLICATION (6–10)
  // -----------------------------
  static int foldedCount(int a, int b) {
    return (a - 5) + (b - 5);
  }

  static int tens(int folded) => folded * 10;

  static int units(int a, int b) {
    return (10 - a) * (10 - b);
  }

  static int multiply(int a, int b) {
    return tens(foldedCount(a, b)) + units(a, b);
  }

  // -----------------------------
  // SQUARES (6² – 10²)
  // -----------------------------
  static int square(int a) {
    return multiply(a, a);
  }

  static int squareFoldedCount(int a) {
    return foldedCount(a, a);
  }

  // -----------------------------
  // SQUARE ROOTS (36 – 100)
  // -----------------------------
  static int? squareRoot(int value) {
    for (int i = 6; i <= 10; i++) {
      if (i * i == value) return i;
    }
    return null; // outside supported range
  }
}
