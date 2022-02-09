import 'package:flutter/cupertino.dart';

main() {
  /// everything in Dart is Object
  /// even functions are objects and have a type, Function
  ///
  String greet(String name, String message) {
    return '$name tells you $message';
  }

  print(greet('Json', 'How is everything?'));

  /// optional positional parameters
  ///
  int multiply(int x, int y, [int? z = 1]) => x * y * z!;
  print(multiply(10, 20));
  print(multiply(10, 2, 10));

  int multiplyThreeWithOptionalPositionalParameters(
    int x,
    int y, [
    int? z,
  ]) {
    var result = x * y;
    if (z != null) {
      result = x * y * z;
    }
    return result;
  }

  print(multiplyThreeWithOptionalPositionalParameters(10, 20));
  print(multiplyThreeWithOptionalPositionalParameters(10, 20, 5));

  /// named parameters are optional unless they are required
  ///
  String sayHello({
    required String message,
    String? name,
  }) {
    return message + name!;
  }

  print(sayHello(message: 'Hello', name: ' John'));
}
/**
// output

Json tells you How is everything?
200
200
1000
Hello John


*/
