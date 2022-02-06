main() {
  /// everything in Dart is Object
  /// Object is an instance of Class
  ///

  Person? person = Person();
  person.name = 'I am a Person Object in Dart';
  print(person.name);
  // I am a Person Object in Dart

  Employee? emp = Employee();
  emp.person = Person();
  emp.person!.name = 'I am an Employee Object with name X';
  print(emp.person!.name);
  // I am an Employee Object with name X
  /// Now we can place the objects in variables
  ///
  var placeHolder = emp;
  placeHolder.person!.name = 'I am a variable, I can change my value.'
      ' But I cannot change my Type.';
  print(placeHolder.person!.name);
  // I am a variable, I can change my value. But I cannot change my Type.
  /// changing value
  ///
  placeHolder.person!.name = 'I am a variable, so I am changing my value.'
      ' But I cannot change my Type.';
  print(placeHolder.person!.name);
  // I am a variable, so I am changing my value. But I cannot change my Type.

  // placeHolder = person;
  // we cannot change the Type
}

class Person {
  late String? name;
}

class Employee {
  late Person? person;
}

/**
I am a Person Object in Dart
I am an Employee Object with name X
I am a variable, I can change my value. But I cannot change my Type.
I am a variable, so I am changing my value. But I cannot change my Type.

 */