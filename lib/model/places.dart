 import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class  Places{
   String get name;
   String get description;
   double get longitude;
   double get latitude;

   LatLng toLatLng();

}

  