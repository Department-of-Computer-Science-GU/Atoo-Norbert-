class FingerAssets {
  // OLD FINGER IMAGES (0–5)

  static const String finger0 = "assets/images/finger12.jpg";
  static const String finger1 = "assets/images/finger11.jpg";
  static const String finger2 = "assets/images/finger10.jpg";
  static const String finger3 = "assets/images/finger9.jpg";
  static const String finger4 = "assets/images/finger2.jpg";
  static const String finger5 = "assets/images/finger1.jpg";

  // NEW MARKED LEFT HANDS

  static const String left0 = "assets/marked/0.png";
  static const String left6 = "assets/marked/6.png";
  static const String left7 = "assets/marked/7.png";
  static const String left8 = "assets/marked/8.png";
  static const String left9 = "assets/marked/9.png";
  static const String left10 = "assets/marked/10.png";

  // NEW MARKED RIGHT HANDS

  static const String right0 = "assets/marked/0b.png";
  static const String right6 = "assets/marked/6b.png";
  static const String right7 = "assets/marked/7b.png";
  static const String right8 = "assets/marked/8b.png";
  static const String right9 = "assets/marked/9b.png";
  static const String right10 = "assets/marked/10b.png";

  // ROOTS / POWERS

  static const String root36 = "assets/marked/36.png";
  static const String root49 = "assets/marked/49.png";
  static const String root64 = "assets/marked/64.png";
  static const String root81 = "assets/marked/81.png";
  static const String root100 = "assets/marked/100.png";

  static String? leftHand(int number) {
    switch (number) {
      case 0:
        return left0;

      case 1:
        return finger1;

      case 2:
        return finger2;

      case 3:
        return finger3;

      case 4:
        return finger4;

      case 5:
        return finger5;

      case 6:
        return left6;

      case 7:
        return left7;

      case 8:
        return left8;

      case 9:
        return left9;

      case 10:
        return left10;

      default:
        return null;
    }
  }

  static String? rightHand(int number) {
    switch (number) {
      case 0:
        return right0;

      case 1:
        return finger1;

      case 2:
        return finger2;

      case 3:
        return finger3;

      case 4:
        return finger4;

      case 5:
        return finger5;

      case 6:
        return right6;

      case 7:
        return right7;

      case 8:
        return right8;

      case 9:
        return right9;

      case 10:
        return right10;

      default:
        return null;
    }
  }

  static String? rootImage(int number) {
    switch (number) {
      case 36:
        return root36;

      case 49:
        return root49;

      case 64:
        return root64;

      case 81:
        return root81;

      case 100:
        return root100;

      default:
        return null;
    }
  }
}

// class FingerAssets {
//   // LEFT HANDS
//   static const String left0 = "assets/marked/0.png";
//   static const String left6 = "assets/marked/6.png";
//   static const String left7 = "assets/marked/7.png";
//   static const String left8 = "assets/marked/8.png";
//   static const String left9 = "assets/marked/9.png";
//   static const String left10 = "assets/marked/10.png";

//   // RIGHT HANDS
//   static const String right0 = "assets/marked/0b.png";
//   static const String right6 = "assets/marked/6b.png";
//   static const String right7 = "assets/marked/7b.png";
//   static const String right8 = "assets/marked/8b.png";
//   static const String right9 = "assets/marked/9b.png";
//   static const String right10 = "assets/marked/10b.png";

//   // ROOTS / POWERS
//   static const String root36 = "assets/marked/36.png";
//   static const String root49 = "assets/marked/49.png";
//   static const String root64 = "assets/marked/64.png";
//   static const String root81 = "assets/marked/81.png";
//   static const String root100 = "assets/marked/100.png";

//   static String? leftHand(int number) {
//     switch (number) {
//       case 0:
//         return left0;
//       case 6:
//         return left6;
//       case 7:
//         return left7;
//       case 8:
//         return left8;
//       case 9:
//         return left9;
//       case 10:
//         return left10;
//       default:
//         return null;
//     }
//   }

//   static String? rightHand(int number) {
//     switch (number) {
//       case 0:
//         return right0;
//       case 6:
//         return right6;
//       case 7:
//         return right7;
//       case 8:
//         return right8;
//       case 9:
//         return right9;
//       case 10:
//         return right10;
//       default:
//         return null;
//     }
//   }

//   static String? rootImage(int number) {
//     switch (number) {
//       case 36:
//         return root36;
//       case 49:
//         return root49;
//       case 64:
//         return root64;
//       case 81:
//         return root81;
//       case 100:
//         return root100;
//       default:
//         return null;
//     }
//   }
// }
