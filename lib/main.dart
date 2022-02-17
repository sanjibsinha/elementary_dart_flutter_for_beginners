import 'package:flutter/material.dart';

main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const title = 'How to be Rich?';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        backgroundColor: Colors.orange[900],
      ),
      backgroundColor: Colors.orange[300],
      body:  Center(
        child: Column(
          children: [
            Text(
              'Simple',
              style: Theme.of(context).textTheme.headline3,
            ),
            const Image(
              image: AssetImage('images/dollar.jpg'),
              fit: BoxFit.cover,
            ),
            Text(
              'Do Your Job consistently. Money will come.',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        )
      ),
    );
  }
}
