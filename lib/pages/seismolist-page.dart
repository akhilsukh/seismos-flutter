import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  Widget _subCol = Container(
      alignment: Alignment.center,
      child: CircularProgressIndicator(
          backgroundColor: Colors.grey[500],
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey[800])));

  final String quakeUrlAll =
      "https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&minmagnitude=2.5&limit=25";

  @override
  void initState() {
    super.initState();
    QuakeFetch.getQuakes(quakeUrlAll).then((value) {
      setState(() {
        _quake = value.features;
        _subCol = ListView.builder(
            itemCount: null == _quake ? 0 : _quake.length,
            itemBuilder: (context, index) {
              Feature feature = _quake[index];
              return Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        feature.properties.place,
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      Text(
                        "Mag - " + feature.properties.mag.toString(),
                        style: GoogleFonts.robotoMono(),
                      ),
                    ],
                  ),
                ),
              );
            });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: "Seismolist"),
      body: Container(
        child: _subCol,
      ),
    );
  }
}
