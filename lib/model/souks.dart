// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tourism/model/places.dart';

class Souk implements Places {
  final String arname;
  final String enname;
  @override
  final String description;
  @override
  final double longitude;
  @override
  final double latitude;
  final List<String> images;
  final String loction; 
  Souk({
    required this.arname,
    required this.enname,
    required this.description,
    required this.longitude,
    required this.latitude,
    required this.images,
    required this.loction,
  });
  
  @override
  String get name => enname;


   @override
  LatLng toLatLng() {
    return LatLng(latitude, longitude);
  }
}
