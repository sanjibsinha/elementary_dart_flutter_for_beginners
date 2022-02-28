import 'dart:math';

import 'package:flutter/material.dart';

class Mood with ChangeNotifier {
  int leftFaceIndex = 1;
  int rightFaceIndex = 1;
  void changeMood() {
    leftFaceIndex = Random().nextInt(4);
    rightFaceIndex = Random().nextInt(4);
    notifyListeners();
  }
}
