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
          const SizedBox(
            height: 6.0,
            width: 60.0,
            child: Divider(
              thickness: 6.0,
            ),
          ),
          const Image(
            image: AssetImage('images/fig3.5.jpg'),
          ),
          SizedBox(
            height: 6.0,
            width: 60.0,
            child: Divider(
              color: Colors.orange.shade300,
              thickness: 2.0,
            ),
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 5.0),
            color: Colors.orange.shade100,
            child: const ListTile(
              title: Text('Ask yourself why you are fighting for?'),
              trailing: Icon(Icons.question_answer_outlined),
            ),
          ),
          SizedBox(
            height: 6.0,
            width: 60.0,
            child: Divider(
              color: Colors.orange.shade300,
              thickness: 2.0,
            ),
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 5.0),
            color: Colors.orange.shade100,
            child: const ListTile(
              title: Text('The reason? In most cases, Trivial.'),
              trailing: Icon(Icons.sms_failed),
            ),
          ),
          SizedBox(
            height: 6.0,
            width: 60.0,
            child: Divider(
              color: Colors.orange.shade300,
              thickness: 2.0,
            ),
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 5.0),
            color: Colors.orange.shade100,
            child: const ListTile(
              title: Text('Remember, Dialogue is the Key.'),
              trailing: Icon(Icons.mobile_friendly),
            ),
          ),
          SizedBox(
            height: 6.0,
            width: 60.0,
            child: Divider(
              color: Colors.orange.shade300,
              thickness: 2.0,
            ),
          ),
        ],
      )),
    );
  }
}
/**
 Container(
            width: 350.0,
            height: 350.0,
            //margin: const EdgeInsets.all(8.0),
            //padding: const EdgeInsets.all(8.0),
            child: const Image(
              image: AssetImage('images/fig3.5.jpg'),
            ),
          ),
 */