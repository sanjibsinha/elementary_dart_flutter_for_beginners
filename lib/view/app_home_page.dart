import 'package:flutter/material.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* String greedy = 'greedy';
    String confident = 'confident';
    String careLess = 'careless'; */
    List name = ['greedy', 'confident', 'careless'];
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
                    print('I am Greedy 3D Buddy.');
                  },
                  child: Image.asset('images/${name[0]}.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    print('I am Confident 3D Buddy');
                  },
                  child: Image.asset('images/${name[1]}.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    print('I am Careless 3D Buddy.');
                  },
                  child: Image.asset('images/${name[2]}.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/**

void main() {
  // named function
  void pressThreeDBuddy() {
    print('Pressing a 3D Buddy.');
  }
  // calling a function
  pressThreeDBuddy();
  // output: Pressing a 3D Buddy.
  
  // anonymous function
  Function anonymous;
  anonymous = () {
    print('Pressing anonymously.');
  };
  // calling an anonymous function
  anonymous();
  // output: Pressing anonymously.
}

*/
