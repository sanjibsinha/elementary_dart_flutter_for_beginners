import 'package:flutter/material.dart';

import 'home_page.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quiz App Home Page',
      home: MyHomePage(title: 'Quiz App Home Page'),
    );
  }
}
