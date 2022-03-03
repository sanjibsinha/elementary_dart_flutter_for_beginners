import 'package:flutter/material.dart';

import 'view/app.dart';


void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Mood()),
      ],
      child: const App(),
    ),
  );
}

/**


void main() {
  
  BWidget b = BWidget();
  
  AWidget a = AWidget(b: b);
  
  BWidget b1 = BWidget(a: a);
  
  print(a.runtimeType); // AWidget
  
  print(a.b); // Instance of 'BWidget'
  
  print(a.b.runtimeType); // BWidget
  
  var returningBWidget = a.getBWidget(a);
  
  print(returningBWidget.runtimeType); // AWidget
  
  print(returningBWidget.b); // Instance of 'BWidget'
  
  print(returningBWidget.b.runtimeType); // BWidget
  
  var returningAWidget = a.getAWidget(b);
  
  print(returningAWidget.runtimeType); // BWidget
  
  print(returningAWidget.s); // I am BWidget
  
  print(b1.a); // Instance of 'AWidget'
  
  print(b1.s); // I am BWidget
  
  print(b1.a?.getAWidget(b)); // Instance of 'BWidget'
  
  print(b1.a?.getBWidget(a)); // Instance of 'AWidget'  
  
  print(b1.a?.getAWidget(b).a); // null
  
  print(b1.a?.getAWidget(b).a); // null
  
  print(b1.a?.getAWidget(b).runtimeType); // BWidget
  
  print(b1.a?.getBWidget(a).b); // Instance of 'BWidget'
  
  print(b1.a?.getBWidget(a).runtimeType); // AWidget
  
  print(b1.a?.getBWidget(a).getAWidget(b)); // Instance of 'BWidget'
  
  print(b1.a?.getBWidget(a).getBWidget(a)); // Instance of 'AWidget'
  
  print(b1.a?.getBWidget(a).getBWidget(a).b); // Instance of 'BWidget'
  
  print(b1.a?.getBWidget(a).getBWidget(a).getAWidget(b)); // Instance of 'BWidget'
  
  
}


class AWidget {
  BWidget? b;  
  
  AWidget({this.b});
  
  AWidget getBWidget(AWidget a) {
    return a;
  }
  
  BWidget getAWidget(BWidget b) {
    this.b = b;
    return b;
  }
  
}

class BWidget {
  String s = 'I am BWidget';
  AWidget? a;
  
  BWidget({this.a});
}

*/

/**


void main() {
  
  BWidget b = BWidget();
  
  AWidget a = AWidget(b: b);
  
  print(a.runtimeType); // AWidget
  
  print(a.b); // Instance of 'BWidget'
  
  print(a.b.runtimeType); // BWidget
  
  var returningBWidget = a.getBWidget(b);
  
  returningBWidget; // BWidget
  
}


class AWidget {
  BWidget? b;
  
  AWidget({this.b});
  
  void getBWidget(BWidget b) {
    this.b = b;
    print(b.runtimeType);
  }
  
}

class BWidget {}


*/


