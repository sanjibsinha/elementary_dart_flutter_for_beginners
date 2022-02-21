import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/custom_card.dart';
import '../controller/custom_container.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                'images/lion-king.jpg',
              ),
              radius: 75.0,
            ),
            CustomContainer(
              data: 'Lion King',
              textStyle: GoogleFonts.laila(
                textStyle: Theme.of(context).textTheme.headline6,
                fontSize: 50,
                fontWeight: FontWeight.w700,
                color: Colors.orange.shade900,
              ),
            ),
            CustomContainer(
              data: 'Flutter Developer',
              textStyle: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.orange.shade500,
              ),
            ),
            SizedBox(
              height: 16.0,
              width: 60.0,
              child: Divider(
                color: Colors.orange.shade300,
                thickness: 2.0,
              ),
            ),
            const CustomCard(
              title: Text('100 200 300'),
              icon: Icon(Icons.phone_android_rounded),
            ),
            const CustomCard(
              title: Text('to@iamlion.com'),
              icon: Icon(Icons.email_outlined),
            )
          ],
        ),
      ),
    );
  }
}
