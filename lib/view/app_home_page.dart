import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../model/mood.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key}) : super(key: key);

  void changeMoodAndColor(BuildContext context) {
    final mood = Provider.of<Mood>(context, listen: false);
    final color = Provider.of<Mood>(context, listen: false);
    mood.changeMood();
    color.changeColor();
  }

  @override
  Widget build(BuildContext context) {
    final mood = context.watch<Mood>();
    final color = context.watch<Mood>();
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
                    changeMoodAndColor(context);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/face${mood.leftFaceIndex + 1}.jpg'),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Mood Changes with Color',
                          style: GoogleFonts.laila(
                            textStyle: Theme.of(context).textTheme.headline6,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: color.colors[color.leftIndex],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    changeMoodAndColor(context);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/face${mood.rightFaceIndex + 1}.jpg'),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Mood Changes with Color',
                          style: GoogleFonts.laila(
                            textStyle: Theme.of(context).textTheme.headline6,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: color.colors[color.rightIndex],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
