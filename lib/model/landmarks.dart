// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tourism/model/places.dart';

class Landmark implements Places{
  // ignore: non_constant_identifier_names
  final String en_name;
  // ignore: non_constant_identifier_names
  final String ar_name;
  final String info;
  final List<String> images;
  final List<HistorySection> history;
  @override
  final double latitude;
  @override
  final double longitude;


  Landmark({
    // ignore: non_constant_identifier_names
    required this.en_name,
    // ignore: non_constant_identifier_names
    required this.ar_name,
    required this.info,
    required this.images,
    required this.history,
    required this.latitude,
    required this.longitude,
  });
  
  @override
  
  String get description => info;
  
  @override
  
  String get name => en_name;
}

class HistorySection {
  final String title;
  final String content;

  HistorySection({
    required this.title,
    required this.content,
  });
}
