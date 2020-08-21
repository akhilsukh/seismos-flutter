import 'dart:async';

import 'package:http/http.dart' as http;
import 'quake.dart';

class QuakeFetch {
  static Future<Quake> getQuakes(String url) async {
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
