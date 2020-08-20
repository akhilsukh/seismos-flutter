import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'components/widgets.dart';
import 'quake.dart';

class QuakeFetch {
  static const String url =
      "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_day.geojson";

  static Future<Quake> getQuakes() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final Quake quakes = quakeFromJson(response.body);
        return quakes;
      }
    } catch (e) {
      return new Quake();
    }
    return new Quake();
  }
}
