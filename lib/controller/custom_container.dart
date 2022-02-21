import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String data;
  final TextStyle textStyle;
  const CustomContainer({
    Key? key,
    required this.data,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        data,
        style: textStyle,
      ),
    );
  }
}
