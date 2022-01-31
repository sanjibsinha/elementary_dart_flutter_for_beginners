main() {
  int? firstNum = 10;
  int? secondNum;
  var first = firstNum != 10 ? 'Not $firstNum' : '$firstNum';
  print(first); // 10
  /// the long version with if-else
  if (firstNum != 10) {
    print('Not $firstNum');
  } else {
    print('$firstNum'); // 10
  }
  var second = secondNum ?? 10;

  /// if secondNum was not NULL the second would return its value
  /// in this case, secondNum was NULL
  /// therefore second expression, or 10 was returned
  print('$second'); // 10
}
