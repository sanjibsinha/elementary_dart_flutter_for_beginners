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

void returnVoid() => print('Returning void');

main() {
  /// everything in Dart is Object
  /// even functions are objects and have a type, Function
  ///

  isTrue() ? print('It is $testTrue') : print('It is $testFalse');
  isFalse() ? print('It is $testFalse') : print('It is $testTrue');
  var result = addTwoNumbers(10, 20);
  print(result);
  returnVoid();
}

/**
 It is true
It is true
30
  Returning void
 */