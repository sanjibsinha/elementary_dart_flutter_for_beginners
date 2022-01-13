void printAListOfInteger(List<int> a) => print(a);

void main() {
  List<int> list = [];
  list.add(1);
  list.add(2);
  printAListOfInteger(list);
}
/**
// Both the code below will work fine

void main() {
  var list = <int>[];
  list.add(1);
  list.add(2);
  printAListOfInteger(list);
}

void main() {
  dynamic list = <int>[];
  list.add(1);
  list.add(2);
  printAListOfInteger(list);
}



 * 💪 Running with sound null safety 💪
Connecting to VM Service at ws://127.0.0.1:33047/ToG8jrELdFw=/ws
[1, 2]
Restarted application in 519ms.
[1, 2]
Restarted application in 244ms.
[1, 2]

 */
