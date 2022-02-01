main() {
  int myNumber = 13;
  bool isTrue = true;

  (myNumber is! bool)
      ? print('$myNumber is not Boolean')
      : print('$myNumber is Boolean');
  (myNumber is bool)
      ? print('$myNumber is Boolean')
      : print('$myNumber is not Boolean');
  (isTrue is int)
      ? print('$isTrue is Integer')
      : print('$isTrue is not Integer');
  (isTrue is! int)
      ? print('$isTrue is not Integer')
      : print('$isTrue is Integer');
  Person? bob = Person();
  bob.name = 'Bob';
  print(bob.name); // Bob
  Person? jane = Person();
  (jane).name = 'Jane';
  print((jane).name); // Jane
  jane is Employee ? print('Jane is not a Person') : print('Jane is a Person');
  // Jane is a Person
  print(jane is Employee); // false
  /* (jane as Employee).name ?? print('Jane is a Person');
  // Error: Expected a value of type 'Employee', but got one of type 'Person' */
}

class Person {
  String? name;
}

class Employee {
  String? name;
}

/**
 * 
13 is not Boolean
13 is not Boolean
true is not Integer
true is not Integer
Bob
Jane
Jane is a Person
false

 */