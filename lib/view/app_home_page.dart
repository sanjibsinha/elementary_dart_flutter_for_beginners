import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/question.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  List<Question> questions = [
    Question(question: '9 + 10 = 29', answer: false),
    Question(question: '20 - 5 = 15', answer: true),
    Question(question: '123 + 3 = 120', answer: false),
    Question(question: '54 + 5 = 59', answer: true),
    Question(question: '20 - 20 = 10', answer: false),
    Question(question: '1 + 456 = 458', answer: false),
  ];

  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      appBar: AppBar(
        title: const Text('Test Your English Knowledge'),
        backgroundColor: Colors.red.shade600,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[questionIndex].question,
              style: GoogleFonts.laila(
                textStyle: const TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              width: 450.0,
              color: Colors.green.shade800,
              margin: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.black.withOpacity(0.04);
                      }
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed)) {
                        return Colors.black.withOpacity(0.12);
                      }
                      return Colors
                          .red.shade800; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {
                  setState(() {
                    questions[questionIndex].answer;
                    questionIndex++;
                    if (questionIndex == 6) {
                      questionIndex = 0;
                    }
                  });
                },
                child: Text(
                  'True',
                  style: GoogleFonts.almendraDisplay(
                    textStyle: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 450.0,
              color: Colors.red.shade700,
              margin: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.black.withOpacity(0.04);
                      }
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed)) {
                        return Colors.black.withOpacity(0.12);
                      }
                      return Colors
                          .red.shade800; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {
                  setState(() {
                    questions[questionIndex].answer;
                    questionIndex++;
                    if (questionIndex == 5) {
                      questionIndex = 0;
                    }
                  });
                },
                child: Text(
                  'False',
                  style: GoogleFonts.almendraDisplay(
                    textStyle: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: const [],
            ),
          ],
        ),
      ),
    );
  }
}
