class Text {
  String? text;
  TextStyle? style;
  Text(this.text, {this.style});
}

class TextStyle {
  double? fontSize;
  TextStyle({this.fontSize});
}

main() {
  TextStyle size = TextStyle(fontSize: 30.0);
  Text iAmTextWithStyle = Text(
    'I am Text',
    style: size,
  );

  print('${iAmTextWithStyle.text} with size ${size.fontSize}');
  print('The Type of the Text Object is: ${iAmTextWithStyle.runtimeType}');
}
/**
// output

I am Text with size 30
The Type of the Text Object is: Text

*/
