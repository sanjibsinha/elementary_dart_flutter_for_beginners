/// how we can use Dart built in types in Flutter
/// here is a simple demonstration for beginners

void main() {
  bool? toBe = true;
  bool? notToBe = false;

  /// isExisting becomes false
  bool? isExisting = toBe && notToBe;

  if (isExisting) {
    /// since this part only works if this condition is true
    /// this part of code won't be executed
    print('I exist.');
  } else {
    /// this will be executed
    print('I don\'t exist.');
  }

  /// doIExist becomes true

  bool? doIExist = toBe || notToBe;
  if (doIExist) {
    /// since this part only works if this condition is true
    /// this part of code will be executed
    print('I exist.');
  } else {
    print('I don\'t exist.');
  }

  /*
  bool good = true;
  bool bad = false;
  they are considered to be dead code
   if(good || bad) {

  } 
  if(good && bad) {

  }
  */

  /* bool isTrue = true;
  bool isFalse = false;
  /// dead code
  if (isFalse || isTrue) {
    print("True.");
  }
  /// dead code
  /* if (isFalse && isTrue) {
    print("False");
  } */ */
}
