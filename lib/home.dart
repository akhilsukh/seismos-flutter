import 'package:flutter/material.dart';
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
  final String quakeUrlMajor =
      "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_day.geojson";
  final String quakeUrlMinor =
      "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson";

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
                QuakeBox(
                  title: "Magnitude 4.5+",
                  quakeUrl: quakeUrlMajor,
                ),
                QuakeBox(
                  title: "Magnitude 2.5+",
                  quakeUrl: quakeUrlMinor,
                ),
                ImageButton(
                  title: "Interactive Map",
                  route: InteractiveMap(),
                  image: new AssetImage('assets/map-background.png'),
                ),
                RoutedButton(title: "Checklists", route: Checklists()),
                RoutedButton(
                  title: "Preparation Guide",
                  route: Preparatory(),
                ),
                RoutedButton(
                  title: "Earthquake Alerts [BETA]",
                  route: Alerts(),
                ),
              ],
            ),
          ),
        ));
  }
}
