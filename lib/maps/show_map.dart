import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
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
  LatLng? _userLocation; // To store the user's location

  @override
  void initState() {
    super.initState();
    _getUserLocation(); // Fetch user location when map loads
  }

  Future<void> _getUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }

    // Check and request permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
    }

    // Get the current position
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      _userLocation = LatLng(position.latitude, position.longitude);
    });

    // Move camera to user's location
    _mapController.animateCamera(CameraUpdate.newLatLng(_userLocation!));
  }

  @override
  Widget build(BuildContext context) {
    Set<Marker> markers = {
      Marker(
        markerId: const MarkerId("User"),
        position: _userLocation ?? widget.initialPlace.toLatLng(),
        infoWindow: const InfoWindow(title: "You are here"),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ),
      Marker(
        markerId: MarkerId(widget.initialPlace.name),
        position: widget.initialPlace.toLatLng(),
        infoWindow: InfoWindow(
          title: widget.initialPlace.name,
          snippet: widget.initialPlace.description,
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
      ),
    };

    return Scaffold(
      body: GoogleMap(
        myLocationEnabled: true,
        initialCameraPosition: CameraPosition(
          target: widget.initialPlace.toLatLng(),
          zoom: 15.0,
        ),
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
        },
      ),
    );
  }
}