class AClass {
  String? iAmInstanceVariable = 'I am initialized';
  String? anotherInstanceVariable;
  void callMeMethod() {
    print('Call me method.');
  }
}

class AClassWithMethodThatPassesInstanceVariable {
  String iAmInstanceVariable = 'I am initialized';
  String? anotherInstanceVariable;
  void sendMessage(String to, String from) {
    iAmInstanceVariable = to;
    anotherInstanceVariable = from;
  }
}

class AClassWithConstructor {
  String iAmInstanceVariable = 'I am initialized';
  AClassWithConstructor(this.iAmInstanceVariable);
}

class AClassWithNamedconstructor {
  String iAmInstanceVariable = 'I am initialized';
  String? anotherInstanceVariable;
  AClassWithNamedconstructor(this.iAmInstanceVariable);
  AClassWithNamedconstructor.aNamedConstructor({
    required this.iAmInstanceVariable,
    this.anotherInstanceVariable,
  });
}

main() {
  /// Every object is an instance of a class
  ///

  var anObject = AClass();
  var anotherObject = AClassWithMethodThatPassesInstanceVariable();
  var aConstructorObject = AClassWithConstructor('Pass a value');
  var aNamedConstructorObject = AClassWithNamedconstructor.aNamedConstructor(
      iAmInstanceVariable: 'I am a required parameter');

  /// Objects have members consisting of functions and data
  /// we will call them methods and instance variables, respectively
  ///
  anObject.iAmInstanceVariable =
      'Although I was initialized, I am changing value.';

  /// we can assign any object to a variable for later use
  ///
  var anInstanceVariable = anObject;

  /// now this variable can access any Object members
  ///
  anInstanceVariable.anotherInstanceVariable = 'I am no longer NULL';
  anInstanceVariable.callMeMethod();

  ///
  ///
  anotherObject.sendMessage('John', 'Json');
  print('${anotherObject.iAmInstanceVariable} sends '
      'message to ${anotherObject.anotherInstanceVariable}');

  ///
  ///
  print(aConstructorObject.iAmInstanceVariable);

  ///
  ///
  print(aNamedConstructorObject.iAmInstanceVariable);

  /// Every app must have a top-level main() function,
  /// which serves as the entrypoint to the app.
  /// The main() function returns void
  /// it has an optional List<String> parameter for arguments.

  /// everything in Dart is Object
  /// even functions are objects and have a type, Function
  ///

  /// All functions return a value. If no return value is
  /// specified, the statement return null
  ///
}
/**
// output

Call me method.
John sends message to Json
Pass a value
I am a required parameter

*/
