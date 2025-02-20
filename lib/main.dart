import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:tourism/GuestHouse/guest_deco.dart';
import 'package:tourism/GuestHouse/guest_info.dart';
import 'package:tourism/GuestHouse/onClick_img.dart';
import 'package:tourism/Museums/musee_info.dart';
import 'package:tourism/Restaurants/onclick_resto.dart';
import 'package:tourism/Restaurants/resto_info.dart';
import 'package:tourism/Restaurants/resto_list.dart';
import 'package:tourism/Souks/onclick_souk.dart';
import 'package:tourism/Souks/souk_info.dart';
import 'package:tourism/Souks/souk_list.dart';

import 'package:tourism/homeScreen.dart';
import 'package:tourism/landmark/landmark_info.dart';
import 'package:tourism/Museums/musee1.dart';
import 'package:tourism/landmark/place1.dart';
import 'package:tourism/landmark/see_history.dart';
import 'package:tourism/learn_more/list_deco.dart';
import 'package:tourism/learn_more/list_info.dart';
import 'package:tourism/maps/show_map.dart';
import 'package:tourism/onBoarding/on_Boarding.dart';
import 'package:tourism/righteous_people/onclick.dart';
import 'package:tourism/righteous_people/people_info.dart';
import 'package:tourism/righteous_people/show_people.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization localization = FlutterLocalization.instance;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/homeScreen': (BuildContext context) => HomeScreen(),
        '/place1': (BuildContext context) => Place1(
              landmark: landmarks[0],
            ),
        '/histiory': (BuildContext context) => History(landmark: landmarks[0]),
        '/musee1': ((BuildContext context) => Musee1(m: museum[0])),
        '/show_list': (BuildContext context) => ListDeco(lm: list),
        '/OnClick': (BuildContext context) => OnClick(showInfo: peopleInfo[0]),
        '/righteous_info': (BuildContext context) =>
            ShowPeople(pinfo: peopleInfo),
        '/guestHouse': (BuildContext context) => HouseDeco(house: house),
        '/onClickImg': (BuildContext context) =>OnclickImg(listHouse: house[0]),
        '/onClickResto':(BuildContext context)=>OnclickResto(resto: resto[0]),
        '/restaurants': (BuildContext context) => RestoDeco(resto:resto),
        '/onClickSouk':(BuildContext context)=>OnclickSouk(souk:souk[0]),
        '/SoukList': (BuildContext context) => SoukList(souk:souk),


      },
      onGenerateRoute: (settings) {
        if (settings.name == '/map') {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => Maps(
              places: args['places'],
              initialPlace: args['initialPlace'],
            ),
          );
        }
        return null;
      },
      home: OnBoarding(),
    );
  }
}
