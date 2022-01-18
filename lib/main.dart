/// how we can use Dart built in types in Flutter
/// here is a simple demonstration for beginners

void main() {
  String? dart = 'Dart for Flutter';
  print(dart);
  String? newdart = dart.substring(0, 5);
  print(newdart);
  String? anExampleOfConcatenation = 'Dart ' + 'for ' + 'Flutter';
  print(anExampleOfConcatenation);
  String? anotherExampleOfConcatenation = 'Dart ' 'for ' 'Flutter';
  print(anotherExampleOfConcatenation);
  String? anExampleOfInterploation = anotherExampleOfConcatenation;
  print('$anExampleOfInterploation is of '
      '${anExampleOfInterploation.length} characters');
}

/**
 * /// output

Dart for Flutter
Dart 
Dart for Flutter
Dart for Flutter
Dart for Flutter is of 16 characters

///
 */