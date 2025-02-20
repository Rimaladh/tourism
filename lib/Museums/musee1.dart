import 'package:flutter/material.dart';
import 'package:tourism/Museums/more_museum.dart';
import 'package:tourism/model/musees.dart';

class Musee1 extends StatefulWidget {
  final Musee m;
  const Musee1({super.key, required this.m});

  @override
  State<Musee1> createState() => _Musee1State();
}

class _Musee1State extends State<Musee1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PanelWidget(
        musee: widget.m,
      ),
    );
  }
}
