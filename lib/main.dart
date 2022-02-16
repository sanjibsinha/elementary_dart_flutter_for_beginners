import 'package:flutter/material.dart';

main() {
  runApp(const App(
    title: 'Initialising Instance variable',
  ));
}

class App extends StatelessWidget {
  const App({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: AppHomePage(
        title: title,
      ),
    );
  }
}

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
