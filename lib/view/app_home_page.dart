import 'package:flutter/material.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  List name = ['greedy', 'confident', 'careless'];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text('Anonymous Function Example'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index++;
                      if (index == 3) {
                        index = 0;
                      }
                    });
                  },
                  child: Image.asset('images/${name[index]}.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index++;
                      if (index == 3) {
                        index = 0;
                      }
                    });
                  },
                  child: Image.asset('images/${name[index]}.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index++;
                      if (index == 3) {
                        index = 0;
                      }
                    });
                  },
                  child: Image.asset('images/${name[index]}.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  // Dart is statically typed language
  var name = 'Sanjib';
  print('Name is $name');

  // we cannot assign any other type to the variable name
  // name = 1;
  // A value of type 'int' can't be assigned to a variable of type 'String'.

  // now it makes dynamically typed which is not recommended
  var age;
  // Prefer typing uninitialized variables and fields.
  age = 100;
  print('Age is: $age');

  age = 'Age';
  print('Age is: $age');

  /**
   Name is Sanjib
Age is: 100
Age is: Age
   * 
   * */
}
