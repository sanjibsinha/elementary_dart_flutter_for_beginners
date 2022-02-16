import 'package:flutter/material.dart';

main() {
  runApp(const App(
    title: 'Initialising Instance variable',
  ));
}

class App extends StatelessWidget {
  const App({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: AppHomePage(
        title: title,
      ),
    );
  }
}

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}


/**

class Context {
  static const _title = 'I am a Context Class variable';
  String? context;
  Context({this.context});
}

class StateLess {
  String? state;
  Context? context;
  StateLess({this.state, this.context});
  void build(Context context) {
    context = context;
    print('I am building the ${context.runtimeType} Type');
  }
}

class Text extends StateLess {
  String? text;
  Text(this.text);

  @override
  void build(Context context) {
    print('I am overriding the build method with ${text.runtimeType} Type');
  }
}

main() {
  /// We do not have to instantiate Context
  /// Because _title is the Context class variable
  print(Context._title);
  
  Text textInstance = Text('I am Text');
  
  /// we can instantiate a Context Object through Text Object
  /// because we have inherited Context Object from Stateless Class
  textInstance.context = Context(context: 'I am Context for Text');
  
  /// now we can check the Type of the Context Object that we 
  /// have instantated through Text Object
  print('Type of the Context Object that we have instantated ' 
        'through Text Object is ' 
        '${textInstance.context.runtimeType}');
  textInstance.context!.context = Context._title;
  
  textInstance.context!.context = 'I have changed Context Title';
  var aNewContextTitleChangedThroughTextClass = textInstance.context!.context;
  print(aNewContextTitleChangedThroughTextClass);
  

 
}
/**
// output

I am a Context Class variable
Type of the Context Object that we have instantated through Text Object is Context
I have changed Context Title

*/


*/

/**

class Context {
  static const _title = 'I am a Context Class variable';
  final String _context;
  Context(this._context);
}



main() {
  /// We do not have to instantiate Context
  /// Because _title is the Context class variable
  print(Context._title);
  Context context = Context('I am a Context instance variable initilized through Constructor');
  print(context._context);
  
 
 
}
/**
// output

I am a Context Class variable
I am a Context instance variable initilized through Constructor

*/


*/
