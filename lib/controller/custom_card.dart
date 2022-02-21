import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Text title;
  final Icon icon;
  const CustomCard({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 5.0),
      color: Colors.orange.shade100,
      child: ListTile(
        title: title,
        trailing: icon,
      ),
    );
  }
}
