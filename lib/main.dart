main() {
  /// everything in Dart is Object
  /// even functions are objects and have a type, Function
  ///
  bool isTrue() {
  return true;
}

var testTrue = isTrue();

bool isFalse() {
  return false;
}

var testFalse = isFalse();

int addTwoNumbers(int x, int y) {
  return x + y;
}

int addTwoNumbers(int x, int y) => x + y;
print(addTwoNumbers(10, 20)); // 30

void returnVoid() => print('Returning void');

  isTrue() ? print('It is $testTrue') : print('It is $testFalse');
  isFalse() ? print('It is $testFalse') : print('It is $testTrue');
  var result = addTwoNumbers(10, 20);
  print(result);
  returnVoid();
  bool isTrue() {
  return true;
}

var testTrue = isTrue();

bool isFalse() {
  return false;
}

var testFalse = isFalse();

int addTwoNumbers(int x, int y) {
  return x + y;
}

int addTwoNumbers(int x, int y) => x + y;
print(addTwoNumbers(10, 20)); // 30

void returnVoid() => print('Returning void');
}

/**
 It is true
It is true
30
  Returning void
 */
