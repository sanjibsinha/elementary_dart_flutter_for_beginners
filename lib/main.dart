class Context {
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
  
  void build(Context context) {
    super.build(context);
    print('I am refering to the superclass');
  }
/**
  @override
  void build(Context context) {
    print('I am overriding the build method with ${text.runtimeType} Type');
  }
  */
}



main() {
  Context conextInstance = Context(context: 'I am Context passed as a named parameter.');
  StateLess stateInstance = StateLess(
    state: 'I am Stateless',
    context: conextInstance,
  );
  Text textInstance = Text('I am Text');
  textInstance.state = 'I am representative of State';
  textInstance.context = Context(context: 'I am Context for Text');
  textInstance.context!.context = 'I am Context';
  print(conextInstance.context);
  print(stateInstance.state);
  print(textInstance.text);

  print('${stateInstance.context!.context} and ${stateInstance.state}');
  print('${textInstance.text} and ${textInstance.state} '
      'and ${textInstance.context!.context}');
  stateInstance.build(conextInstance);
  textInstance.build(conextInstance);
}
/**
// output

I am Context passed as a named parameter.
I am Stateless
I am Text
I am Context passed as a named parameter. and I am Stateless
I am Text and I am representative of State and I am Context
I am building the Context Type
I am building the Context Type
I am refering to the superclass

I am Context passed as a named parameter.
I am Stateless
I am Text
I am Context passed as a named parameter. and I am Stateless
I am Text and I am representative of State and I am Context
I am building the Context Type
I am overriding the build method with String Type



*/
