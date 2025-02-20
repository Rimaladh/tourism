// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tourism/model/places.dart';

class Musee implements Places{
  final String engname;
  final String arbname;
  final String info;
  final String image;
  final List<String> images;
  @override
  final double latitude;
  @override
  final double longitude;
  final List<MuseumHistory> mhistory;

  Musee( {required this.engname,required this.arbname, required this.info, required this.image, required this.images, required this.mhistory,required this.longitude,required this.latitude,});
  
  @override
  String get description => info;
  
  @override
  String get name => engname;


  
  
}

class MuseumHistory {
  final String title;
  final String content;

  MuseumHistory({required this.title, required this.content});
}
