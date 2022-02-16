import 'package:flutter/material.dart';

main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const _title = 'Class Variables and Methods';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: AppHomePage(),
    );
  }
}

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(App._title),
      ),
      body: Center(
        child: Text(
          App._title,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
