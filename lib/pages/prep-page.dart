import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/widgets.dart';

class Preparatory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: "Preparation Guide"),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          children: [
            ImageButton(
              title: "General",
              image: AssetImage('assets/map-background.png'),
            ),
            ImageButton(
              title: "Before",
              image: AssetImage('assets/map-background.png'),
            ),
            ImageButton(
              title: "During",
              image: AssetImage('assets/map-background.png'),
            ),
            ImageButton(
              title: "After",
              image: AssetImage('assets/map-background.png'),
            )
          ],
        ),
      ),
    );
  }
}
