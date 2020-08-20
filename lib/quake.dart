// To parse this JSON data, do
//
//     final quake = quakeFromJson(jsonString);

import 'dart:convert';

Quake quakeFromJson(String str) => Quake.fromJson(json.decode(str));

String quakeToJson(Quake data) => json.encode(data.toJson());

class Quake {
  Quake({
    this.features,
  });

  List<Feature> features;

  factory Quake.fromJson(Map<String, dynamic> json) => Quake(
        features: List<Feature>.from(
            json["features"].map((x) => Feature.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "features": List<dynamic>.from(features.map((x) => x.toJson())),
      };
}

class Feature {
  Feature({
    this.properties,
    this.geometry,
  });

  Properties properties;
  Geometry geometry;

  factory Feature.fromJson(Map<String, dynamic> json) => Feature(
        properties: Properties.fromJson(json["properties"]),
        geometry: Geometry.fromJson(json["geometry"]),
      );

  Map<String, dynamic> toJson() => {
        "properties": properties.toJson(),
        "geometry": geometry.toJson(),
      };
}

class Geometry {
  Geometry({
    this.coordinates,
  });

  List<double> coordinates;

  factory Geometry.fromJson(Map<String, dynamic> json) => Geometry(
        coordinates:
            List<double>.from(json["coordinates"].map((x) => x.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
      };
}

class Properties {
  Properties({
    this.mag,
    this.place,
    this.time,
    this.url,
    this.alert,
    this.type,
  });

  double mag;
  String place;
  int time;
  String url;
  String alert;
  String type;

  factory Properties.fromJson(Map<String, dynamic> json) => Properties(
        mag: json["mag"].toDouble(),
        place: json["place"],
        time: json["time"],
        url: json["url"],
        alert: json["alert"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "mag": mag,
        "place": place,
        "time": time,
        "url": url,
        "alert": alert,
        "type": type,
      };
}
