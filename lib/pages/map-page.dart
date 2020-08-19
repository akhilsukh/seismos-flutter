import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seismos_flutter/components/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class InteractiveMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: "Interactive Map",
      ),
      body: Container(
        child: MapWidget(),
      ),
    );
  }
}

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(37.317218, -122.045004);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.black)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            )),
      ),
    );
  }
}
