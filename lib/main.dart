class Text {
  String? text;
  TextStyle? style;
  Text({required this.text, this.style});
}

class TextStyle {
  double? size;
  TextStyle({this.size});
}

main() {
  TextStyle size = TextStyle(size: 30.0);
  Text iAmTextWithStyle = Text(
    text: 'I am Text',
    style: size,
  );

  print('${iAmTextWithStyle.text} with size ${size.size}');
}
/**
// output

I am Text with size 30

*/
