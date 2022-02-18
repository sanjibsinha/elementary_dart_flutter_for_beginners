import 'package:flutter/material.dart';

main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const title = 'How to be Peaceful?';

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
  const AppHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text(title),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(10.0),
        color: Colors.blue,
        child: const Text(
          'I am Container',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
          ),
        ),
      ),
    );
  }
}

/**
 * Containers with no children try to be as big as possible unless 
 * the incoming constraints are unbounded, in which case they try 
 * to be as small as possible. 
 * Containers with children size themselves to their children. 
 */

/**
 * class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.pink[900],
      ),
      backgroundColor: Colors.pink[300],
      body: Center(
          child: Column(
        children: [
          Text(
            'Simple',
            style: Theme.of(context).textTheme.headline3,
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: const Image(
              image: AssetImage('images/fig3.5.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Why are you fighting? Ask yourself first.',
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      )),
    );
  }
}

 */