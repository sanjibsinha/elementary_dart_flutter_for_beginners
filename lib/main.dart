import 'package:flutter/material.dart';

/// how we can use Dart built in types in Flutter
/// here is a simple demonstration for beginners

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      /// using String type
      title: 'Dart Built in Types',

      /// using Boolean type
      debugShowCheckedModeBanner: false,
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// using String type
        title: const Text('Dart Built in Types'),
      ),
      body: Center(
        /// using type List
        child: Row(
          children: [
            Container(
              /// using type double
              ///
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.lime,

              /// using String type
              child: const Text('First Row'),
            ),
            Container(
              /// using type double
              padding: const EdgeInsets.all(10.0),
              color: Colors.amber,

              /// using String type
              child: const Text('Second Row'),
            ),
          ],
        ),
      ),
    );
  }
}
