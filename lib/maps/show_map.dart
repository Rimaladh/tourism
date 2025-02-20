import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tourism/model/places.dart';

class Maps extends StatefulWidget {
  final List<Places> places;
  final Places initialPlace; // The specific place to focus on

  const Maps({super.key, required this.places, required this.initialPlace});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    Set<Marker> markers = widget.places.map((place) {
      return Marker(
        markerId: MarkerId(place.name),
        position: LatLng(place.latitude, place.longitude),
        infoWindow: InfoWindow(
          title: place.name,
          snippet: place.description,
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
      );
    }).toSet();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps'),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
              widget.initialPlace.latitude, widget.initialPlace.longitude),
          zoom: 25.0,
        ),
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
          _moveToPlace(widget.initialPlace); // Move camera when map loads
        },
      ),
    );
  }

  void _moveToPlace(Places place) {
    _mapController.animateCamera(
      CameraUpdate.newLatLngZoom(
        LatLng(place.latitude, place.longitude),
        29.0,
      ),
    );
  }
}
