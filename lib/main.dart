import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const title = 'The Lion King Business Card';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                'images/lion-king.jpg',
              ),
              radius: 75.0,
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Lion King',
                style: GoogleFonts.laila(
                  textStyle: Theme.of(context).textTheme.headline6,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange.shade900,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Flutter Developer',
                style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange.shade500,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
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
                title: Text('100 123 456'),
                trailing: Icon(Icons.phone_android),
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 5.0),
              color: Colors.orange.shade100,
              child: const ListTile(
                title: Text('to@iamlion.com'),
                trailing: Icon(Icons.email_outlined),
              ),
            ),
          ],
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
