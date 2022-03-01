import 'dart:math';

import 'package:flutter/material.dart';

class Mood with ChangeNotifier {
  int leftFaceIndex = 1;
  int rightFaceIndex = 1;

  List colors = [Colors.red, Colors.green, Colors.purple, Colors.deepOrange];
  int leftIndex = 1;
  int rightIndex = 1;

  void changeMood() {
    leftFaceIndex = Random().nextInt(4);
    rightFaceIndex = Random().nextInt(4);
    notifyListeners();
  }

  void changeColor() {
    leftIndex = Random().nextInt(4);
    rightIndex = Random().nextInt(4);
    notifyListeners();
  }
}
