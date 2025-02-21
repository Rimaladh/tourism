import 'package:tourism/model/places.dart';

class Coffee implements Places {
  final String arname;
  final String enname;
  @override
  final String description;
  @override
  final double longitude;
  @override
  final double latitude;
  final String rating;
  final List<String> images;
  final String loction;
  final List<String> phone;
  final String email;
  final String website;
  final String facebook;
  final String instagram;

  Coffee(
      {required this.arname,
      required this.enname,
      required this.description,
      required this.longitude,
      required this.latitude,
      required this.rating,
      required this.images,
      required this.loction,
      required this.phone,
      required this.email,
      required this.website,
      required this.facebook,
      required this.instagram});

  @override
  String get name => arname;
}
