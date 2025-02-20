import 'package:flutter/material.dart';

import 'package:tourism/landmark/panel_widget.dart';
import 'package:tourism/model/landmarks.dart';

class Place1 extends StatefulWidget {
  final Landmark landmark;
  const Place1({super.key, required this.landmark});

  @override
  State<Place1> createState() => _Place1State();
}

class _Place1State extends State<Place1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PanelWidget(
      landmark: widget.landmark,
    ));
  }
}
