import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: const Text('Mood Swing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.red.withOpacity(0.04);
                    }
                    if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed)) {
                      return Colors.red.withOpacity(0.12);
                    }
                    return null; // Defer to the widget's default.
                  },
                ),
              ),
              onPressed: () {},
              child: Text(
                'True',
                style: GoogleFonts.almendraDisplay(
                  textStyle: const TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
