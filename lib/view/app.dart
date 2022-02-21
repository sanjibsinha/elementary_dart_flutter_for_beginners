import 'package:flutter/material.dart';

import 'app_home.dart';

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
