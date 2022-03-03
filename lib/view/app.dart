import 'package:flutter/material.dart';

import 'app_home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Introduction to List',
      home: AppHomePage(),
    );
  }
}
