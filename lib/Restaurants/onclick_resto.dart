import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/Museums/musee_info.dart';
import 'package:tourism/landmark/landmark_info.dart';
import 'package:tourism/maps/show_map.dart';
import 'package:tourism/model/restaurant.dart';

class OnclickResto extends StatefulWidget {
  final Resto resto;
  const OnclickResto({super.key, required this.resto});

  @override
  State<OnclickResto> createState() => _OnclickRestoState();
}

class _OnclickRestoState extends State<OnclickResto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 237, 237),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Restaurants",
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushNamed('/restaurants');
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: AnotherCarousel(
                        images: widget.resto.images
                            .map((item) => Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                ))
                            .toList(),
                        animationDuration: Duration.zero,
                        dotSize: 4, // Size of the dots
                        dotIncreasedColor:
                            Colors.blue, // Color of the active dot
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Expanded(
                      child: Text(
                        widget.resto.enname,
                        style: GoogleFonts.cairo(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                      ),
                    ),
                  ),
                  Text(
                      style: GoogleFonts.cairo(fontSize: 34),
                      widget.resto.arname),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: 16, top: 16, bottom: 8, right: 16),
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Text(widget.resto.description,
                                  style: GoogleFonts.cairo(
                                    fontSize: 22,
                                    color: Colors.grey[700], // Change color
                                    height:
                                        1.5, // Increase line height for better readability
                                  ),
                                  textAlign: TextAlign.justify),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  // Text('Price: ${widget.listHouse.price} dt',
                                  //     style: GoogleFonts.cairo(
                                  //       fontSize: 22,
                                  //       color: Colors.green, // Change color
                                  //       fontWeight: FontWeight.bold,
                                  //     )),
                                  // SizedBox(
                                  //   width: 7,
                                  // ),
                                  // Text('/ night',
                                  //     style: const TextStyle(
                                  //         fontWeight: FontWeight.bold,
                                  //         fontSize: 20,
                                  //         color: Color.fromARGB(
                                  //             255, 134, 133, 133)))
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Email: ${widget.resto.email}',
                                style: GoogleFonts.cairo(
                                  fontSize: 18,
                                  color: Colors.blue, // Change color
                                ),
                              ),
                              SizedBox(height: 8),
                              TextButton(
                                onPressed: () {},
                                // => _showPhoneNumbers(context),
                                child: Text(
                                  'Phone: ${widget.resto.phone}',
                                  style: GoogleFonts.cairo(
                                    fontSize: 18,
                                    color: Colors.blue, // Change color
                                  ),
                                ),
                              ),
                              // TextButton(
                              //   onPressed: () => _launchWebsite(
                              //       'https://www.google.com'), // Hardcoded URL
                              //   child: Text(
                              //     'Browse google !',
                              //     style: GoogleFonts.cairo(
                              //       fontSize: 18,
                              //       color: Colors.blue,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ))),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 13, top: 10, bottom: 8, right: 13),
                      child: Container(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withAlpha(110),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  TextButton.icon(
                                      icon: FaIcon(
                                        FontAwesomeIcons.mapPin,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      onPressed: () async {
                                        await Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => Maps(
                                              places: [
                                                widget.resto,
                                                ...landmarks,
                                                ...museum,
                                              ],
                                              initialPlace: widget.resto,
                                            ),
                                          ),
                                        );
                                      },
                                      label: Text('See on Map')),
                                  SizedBox(width: 16),
                                  TextButton.icon(
                                      icon: FaIcon(
                                        FontAwesomeIcons.heart,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {},
                                      label: Text('Add to favourites')),
                                ],
                              )
                            ],
                          ))),
                ],
              ),
            ],
          ),
        ));
  }
}
