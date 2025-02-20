import 'package:tourism/model/places.dart';

class GuestHouse implements Places {
  final String arname;
  final String enname;
  final String description;
  final double longitude;
  final double latitude;
  final String rating;
  final double price;
  final List<String> images;
  final String loction;
  final List<String> phone;
  final String email;
  final String website;

  GuestHouse({
    required this.enname,
    required this.arname, 
    required this.description, 
    required this.longitude, 
    required this.latitude, 
    required this.rating, 
    required this.price, 
    required this.images, 
    required this.loction, 
    required this.phone, 
    required this.email, 
    required this.website});
    
      @override
      String get name => enname;
   
}
