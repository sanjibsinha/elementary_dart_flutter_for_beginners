import 'package:flutter/material.dart';

import '../controller/question_widget.dart';
import '../model/questions_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _correctAnswer = 'Choose your correct answer!';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    if (_counter == 0) {
      _correctAnswer = 'Choose your correct answer!';
    } else if (_counter == 1) {
      _correctAnswer = 'Synonym of Mendacity was: Falsehood';
    } else if (_counter == 2) {
      _correctAnswer = 'Synonym of Culpable was: Guilty';
    } else {
      _counter = 0;
      _correctAnswer = 'Synonym of Rapacious was: Greedy';
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = questionList;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            QuestionWidget(questions: questions, counter: _counter),
            ...(questions[_counter]['answers'] as List<String>)
                .map(
                  (answer) => buildElevatedButton(answer),
                )
                .toList(),
            SizedBox(
              height: 16.0,
              width: 60.0,
              child: Divider(
                color: Colors.orange.shade300,
                thickness: 2.0,
              ),
            ),
            Text(
              _correctAnswer,
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  ElevatedButton buildElevatedButton(String answer) {
    return ElevatedButton(
      onPressed: _incrementCounter,
      child: Container(
        //padding: const EdgeInsets.all(4.0),
        color: Colors.white,
        child: Text(
          answer,
          style: const TextStyle(
            fontSize: 30.0,
            color: Colors.redAccent,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        textStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
