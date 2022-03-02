import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  List<String> questions = [
    '640 acres equal 1 square mile.',
    'A young horse is called a duckling.',
    'The sound a Frog makes is known as croak.',
    'The synonym of scorn is despise.',
  ];

  int questionIndex = 0;

  List<bool> answers = [
    true,
    false,
    true,
    true,
  ];

  String check = '';

  void checkAnswer() {
    if (questionIndex == 0) {
      check = '';
    } else if (questionIndex == 1) {
      check = 'Corerct Answer was: 640 acres = 1 square mile.';
    } else if (questionIndex == 2) {
      check = 'Corerct Answer was: A young horse = a duckling.';
    } else if (questionIndex == 3) {
      check = 'Corerct Answer was: The sound a Frog makes = croak.';
    } else if (questionIndex > 3) {
      check = 'Corerct Answer was: The synonym of scorn = despise.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: const Text('Introduction to List'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                questions[questionIndex],
                textAlign: TextAlign.center,
                style: GoogleFonts.laila(
                  textStyle: Theme.of(context).textTheme.headline6,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.amber.shade400,
                ),
              ),
              buildButtonInsideContainer(
                'True',
                Colors.white,
              ),
              buildButtonInsideContainer(
                'False',
                Colors.black,
              ),
              Text(
                check,
                textAlign: TextAlign.center,
                style: GoogleFonts.caveat(
                  textStyle: Theme.of(context).textTheme.headline6,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue.shade50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildButtonInsideContainer(String answer, Color color) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            answers[questionIndex];
            questionIndex++;
            checkAnswer();
          });
          if (questionIndex > 3) {
            questionIndex = 0;
          }
        },
        child: Text(
          answer,
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.headline6,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
      ),
    );
  }
}
