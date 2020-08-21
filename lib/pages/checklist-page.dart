import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/widgets.dart';

class Checklists extends StatelessWidget {
  final arrayFA = [
    "Band aids",
    "Tweezers",
    "Scissors",
    "Gauze",
    "Alcohol wipes",
    "Flashlight",
    "Batteries",
    "Thermometer"
  ];
  final arrayEO = [
    "Flashlight",
    "Candles",
    "Matches/Lighter",
    "Battery-powered Radio",
    "Portable Heater",
    "Batteries"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: "Checklists",
      ),
      body: SafeArea(
        child: Container(
          margin: new EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            children: [
              CheckBox(title: "First Aid Kit", arrayData: arrayFA),
              CheckBox(title: "Emergency Outage Kit", arrayData: arrayEO),
              Spacer(),
              Footnote(
                text: "Kits should be placed at Work, Home or in car.",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CheckBox extends StatelessWidget {
  final arrayData;
  final String title;
  CheckBox({Key key, this.title, this.arrayData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.robotoMono(
                textStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
          ),
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
                  children: [
                    for (var item in arrayData) BulletPoints(text: item)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CheckTitle extends StatelessWidget {
  final String title;
  CheckTitle({Key key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.robotoMono(
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
    );
  }
}

class BulletPoints extends StatelessWidget {
  final String text;
  BulletPoints({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      "- " + text,
      style: GoogleFonts.robotoMono(textStyle: TextStyle()),
    );
  }
}
