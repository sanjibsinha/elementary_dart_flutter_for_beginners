import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/mood.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mood = Provider.of<Mood>(context);
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
                    mood.changeMood();
                  },
                  child:
                      Image.asset('images/face${mood.leftFaceIndex + 1}.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    mood.changeMood();
                  },
                  child:
                      Image.asset('images/face${mood.rightFaceIndex + 1}.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
