// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/landmark/place1.dart';

import 'package:tourism/model/landmarks.dart';

class LandDeco extends StatefulWidget {
  final List<Landmark> landmark;
  const LandDeco({
    super.key,
    required this.landmark,
  });

  @override
  State<LandDeco> createState() => _LandDecoState();
}

class _LandDecoState extends State<LandDeco> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 4,
        child: SizedBox(
            height: 360,
            width: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.landmark.length,
                itemBuilder: (context, index) {
                  final land = widget.landmark[index];
                  return GestureDetector(
                    // Use GestureDetector to handle tap
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Place1(
                              landmark: land), // Pass the clicked landmark here
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(33),
                      padding: const EdgeInsets.only(top: 7),
                      width: 220,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(110),
                            spreadRadius: 5,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                land.images[0],
                                width: 190,
                                height: 190,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Flexible(
                                child: Column(
                              children: [
                                Text(
                                  land.en_name,
                                  style: GoogleFonts.cairo(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  land.ar_name,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/place1');
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Color(0xFF2B6CB0),
                              ),
                              child: const Text(
                                'More',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ]),
                    ),
                  );
                })),
      )
    ]);
  }
}
