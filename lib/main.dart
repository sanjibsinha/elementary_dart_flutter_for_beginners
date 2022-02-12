class Text {
  String? text;
  TextStyle? style;
  Text({required this.text, this.style});
}

class TextStyle {
  double? size;
  TextStyle({this.size});
}

main() {
  TextStyle size = TextStyle(size: 30.0);
  Text iAmTextWithStyle = Text(
    text: 'I am Text',
    style: size,
  );

  print('${iAmTextWithStyle.text} with size ${size.size}');
}
/**
// output

I am Text with size 30

*/
/**
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart and Flutter Class'),
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        padding: const EdgeInsets.all(30.0),
        child: const Text(
          'Dart and Flutter Demonstration',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}



*/
