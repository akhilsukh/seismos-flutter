import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seismos_flutter/quake-fetch.dart';
import 'package:seismos_flutter/quake.dart';
import '../components/widgets.dart';

class Seismolist extends StatefulWidget {
  @override
  _SeismolistState createState() => _SeismolistState();
}

class _SeismolistState extends State<Seismolist> {
  List<Feature> _quake;
  bool _loading;

  final String quakeUrlAll =
      "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson";

  @override
  void initState() {
    super.initState();
    _loading = true;
    QuakeFetch.getQuakes(quakeUrlAll).then((value) {
      setState(() {
        _quake = value.features;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: "Seismolist"),
      body: Container(
        child: ListView.builder(
            itemCount: null == _quake ? 0 : _quake.length,
            itemBuilder: (context, index) {
              Feature feature = _quake[index];
              return ListTile(
                title: Text(feature.properties.place),
                subtitle: Text("Mag - " + feature.properties.mag.toString()),
              );
            }),
      ),
    );
  }
}
