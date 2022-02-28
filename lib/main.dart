import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/mood.dart';
import 'view/app.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Mood()),
      ],
      child: const App(),
    ),
  );
}

/**
void main() {
  
  returnNothing();
  
  instruct();
  
  
  
}

void returnNothing() {
  doSomething();
}

void doSomething() {
  print('Do something');
}

void instruct() {
  print('${add()}');
  print('${subtract()}');
  print('${multiply()}');
  print('${divide()}');
}

int add() => 1 + 2;
int subtract() => 2 - 1;
int multiply() => 2 * 3;
int divide() => 4 ~/ 2;

/**
 * Do something
3
1
6
2
 */
void main() {
  
print(greet(greeting: 'Hello', name: 'Json Web'));   
  
}

String greet({required String greeting, required String name}) {
  return greeting + ' ' + name;
}



*/
