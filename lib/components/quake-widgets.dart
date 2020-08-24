import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import '../pages/seismolist-page.dart';
import 'package:seismos_flutter/quake-fetch.dart';
import 'package:seismos_flutter/quake.dart';

class QuakeBox extends StatefulWidget {
  final String title;
  final String quakeUrl;
  QuakeBox({this.title, this.quakeUrl});

  @override
  _QuakeBoxState createState() => _QuakeBoxState();
}

class _QuakeBoxState extends State<QuakeBox> {
  List<Feature> _quake;
  Widget _subCol = LinearProgressIndicator(
      backgroundColor: Colors.grey[500],
      valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey[800]));

  @override
  void initState() {
    super.initState();
    QuakeFetch.getQuakes(widget.quakeUrl).then((value) {
      setState(() {
        _quake = value.features;
        _subCol = Column(children: [
          for (int i = 0; i < 4; i++)
            QuakeEntries(
                location: _quake[i].properties.place,
                magnitude: _quake[i].properties.mag.toString())
        ]);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuakeTitle(title: widget.title),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2, horizontal: 0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(4)),
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [_subCol],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class QuakeTitle extends StatelessWidget {
  final String title;
  QuakeTitle({Key key, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.robotoMono(
              textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
        ),
        Spacer(),
        RichText(
          text: TextSpan(
              text: "View All >",
              style: GoogleFonts.robotoMono(
                  textStyle: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      color: Colors.grey[600])),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Seismolist()),
                  );
                }),
        ),
      ],
    );
  }
}

class QuakeEntries extends StatelessWidget {
  final String location;
  final String magnitude;
  QuakeEntries({Key key, this.location, this.magnitude});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          location,
          style: GoogleFonts.robotoMono(textStyle: TextStyle()),
        ),
        Spacer(),
        Text(
          magnitude,
          style: GoogleFonts.robotoMono(textStyle: TextStyle()),
        ),
      ],
    );
  }
}
