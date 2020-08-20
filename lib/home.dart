import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/widgets.dart';
import 'pages/checklist-page.dart';
import 'pages/alerts-page.dart';
import 'pages/prep-page.dart';
import 'pages/map-page.dart';
import 'components/quake-widgets.dart';

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
                ImageButton(
                  title: "Interactive Map",
                  route: InteractiveMap(),
                  image: new AssetImage('assets/map-background.png'),
                ),
                new RoutedButton(title: "Checklists", route: Checklists()),
                new RoutedButton(
                  title: "Preparation Guide",
                  route: Preparatory(),
                ),
                new RoutedButton(
                  title: "Earthquake Alerts [BETA]",
                  route: Alerts(),
                ),
              ],
            ),
          ),
        ));
  }
}
