import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/widgets.dart';
import 'pages/checklist-page.dart';
import 'pages/alerts-page.dart';
import 'pages/prep-page.dart';
import 'pages/map-page.dart';
import 'components/quake-box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seismos',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header(
          title: "Seismos",
        ),
        body: SafeArea(
          child: Container(
            margin: new EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              children: [
                QuakeBox(title: "Magnitude 4.5+"),
                QuakeBox(title: "Magnitude 2.5+"),
                MapButton(),
                new RoutedButton(title: "Checklists", route: Checklists()),
                new RoutedButton(
                  title: "Preparation Guide",
                  route: Preparatory(),
                ),
                new RoutedButton(
                  title: "Earthquake Alerts",
                  route: Alerts(),
                ),
              ],
            ),
          ),
        ));
  }
}

class MapButton extends StatelessWidget {
  final mapBackground = new AssetImage('assets/map-background.png');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(image: mapBackground, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(4)),
        child: OutlineButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InteractiveMap()),
            );
          },
          color: Colors.white,
          borderSide: BorderSide(color: Colors.black),
          highlightedBorderColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            "Interactive Map",
            style: GoogleFonts.robotoMono(textStyle: TextStyle(fontSize: 16)),
          ),
        ),
      ),
    );
  }
}
