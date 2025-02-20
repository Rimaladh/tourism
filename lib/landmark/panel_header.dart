import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/model/landmarks.dart';

class PanelHeaderWidget extends StatelessWidget {
  final Landmark landmark;

  const PanelHeaderWidget({super.key, required this.landmark});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: buildLandmark()),
      ],
    );
  }

  Widget buildLandmark() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            landmark.en_name,
            style: GoogleFonts.cairo(
              letterSpacing: 3,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
        ],
      );
}
