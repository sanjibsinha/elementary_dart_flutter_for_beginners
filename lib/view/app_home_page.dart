import 'dart:math';
import 'package:flutter/material.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  int leftFaceIndex = 1;
  int rightFaceIndex = 1;
  void changeMood() {
    setState(() {
      leftFaceIndex = Random().nextInt(4);
      rightFaceIndex = Random().nextInt(4);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text('Mood Swing App'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    changeMood();
                  },
                  child: Image.asset('images/face${leftFaceIndex + 1}.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    changeMood();
                  },
                  child: Image.asset('images/face${rightFaceIndex + 1}.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
