import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/GuestHouse/guest_info.dart';

import 'package:tourism/Museums/musee_info.dart';
import 'package:tourism/landmark/landmark_info.dart';
import 'package:tourism/maps/show_map.dart';
import 'package:tourism/model/landmarks.dart';
import 'package:tourism/landmark/see_history.dart';

class PanelWidget extends StatelessWidget {
  final Landmark landmark;
  const PanelWidget({
    super.key,
    required this.landmark,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 237, 237),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushNamed('/homeScreen');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: 450,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: AnotherCarousel(
                      images: landmark.images
                          .map((item) => Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ))
                          .toList(),
                      animationDuration: Duration.zero,
                      dotSize: 4, // Size of the dots
                      dotIncreasedColor: Colors.blue, // Color of the active dot
                      dotColor: const Color.fromARGB(255, 210, 205, 205),
                      dotSpacing: 8, // Spacing between dots
                      dotBgColor: Colors
                          .transparent, // Background color of the dots (transparent to hide the indicator)
                      noRadiusForIndicator:
                          true, // Remove the radius/border around the indicator
                      showIndicator: true, // Ensure the dots are shown
                      indicatorBgPadding: 0,
                    ),
                  ),
                )),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Expanded(
                      child: Text(
                        landmark.en_name,
                        style: GoogleFonts.cairo(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                      ),
                    ),
                  ),
                  Text(
                      style: GoogleFonts.cairo(fontSize: 34), landmark.ar_name),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 16, top: 16, bottom: 8, right: 16),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withAlpha(110),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(landmark.description,
                            style: GoogleFonts.cairo(
                              fontSize: 22,
                              color: Colors.grey[700], // Change color
                              height:
                                  1.5, // Increase line height for better readability
                            ),
                            textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    TextButton.icon(
                        icon: FaIcon(
                          FontAwesomeIcons.book, // Example: Monument icon
                          size: 20,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => History(landmark: landmark),
                            ),
                          );
                        },
                        label: Text('Read More')),
                    TextButton.icon(
                        icon: FaIcon(
                          FontAwesomeIcons.heart, // Example: Monument icon
                          size: 20,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                        label: Text('Favorite')),
                    TextButton.icon(
                        icon: FaIcon(
                          FontAwesomeIcons.mapPin, // Example: Monument icon
                          size: 20,
                          color: Colors.black,
                        ),
                        onPressed: () async {
                          await Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Maps(
                                places: [
                                  ...landmarks,
                                  ...museum,
                                  ...house
                                ], // Combine both lists
                                initialPlace:
                                    landmark, // Pass the selected landmark
                              ),
                            ),
                          );
                        },
                        label: Text('See on Map')),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
