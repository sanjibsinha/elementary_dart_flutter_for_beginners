/// how we can use Dart built in types in Flutter
/// here is a simple demonstration for beginners

void main() {
  var fruitCollection = {'Mango', 'Apple', 'Jack fruit'};
  print(fruitCollection.lookup('Apple'));
  var anotherFruitCollection = {'Mango', 'Apple', 'Jack fruit'};
  print(anotherFruitCollection.lookup('Something Else'));
  var myInteger = {};
  if (myInteger.isEmpty) {
    print("It is a map that has no key, value pair.");
  } else
    print("It is a set that has no key, value pair.");

  var actors = {
    'first': 'De Nero',
    'second': 'Pacino',
    'third': 'Willis',
    'fourth': 'Morgan',
    'fifth': 'Hackman',
    1: 'Someone Else',
  };
  print(actors[1]);
  Map<int, String> maps = {};
  maps[1] = 'First';

  /// maps['1'] = 'First';
  /// The argument type 'String' can't be assigned to the parameter type 'int'.

  Map<dynamic, dynamic> myProducts = {};
  myProducts['first'] = 'TV';
  myProducts[2] = 'Mobile';
  myProducts['third'] = 'Refrigerator';
  if (myProducts.containsValue('Mobile')) {
    print('Our products have ${myProducts[2]}');
  }
  var myProductsOne = {'final': 3, ...myProducts};
  if (myProductsOne.containsValue('Mobile')) {
    print('Our products have ${myProductsOne[2]}');
  }
  if (myProductsOne.containsValue(3)) {
    print('Our products have ${myProductsOne['final']}');
  }
// Our products have Mobile
// Our products have Mobile
// Our products have Mobile
// Our products have 3
}

/**
 * /// output



///
 */