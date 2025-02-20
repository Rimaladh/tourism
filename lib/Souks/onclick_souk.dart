import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/Museums/musee_info.dart';
import 'package:tourism/landmark/landmark_info.dart';
import 'package:tourism/maps/show_map.dart';
import 'package:tourism/model/souks.dart';

class OnclickSouk extends StatefulWidget {
  final Souk souk;
  const OnclickSouk({super.key, required this.souk});

  @override
  State<OnclickSouk> createState() => _OnclickSoukState();
}

class _OnclickSoukState extends State<OnclickSouk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 237, 237),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushNamed('/SoukList');
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
                        images: widget.souk.images
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
                        widget.souk.enname,
                        style: GoogleFonts.cairo(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                      ),
                    ),
                  ),
                  Text(
                      style: GoogleFonts.cairo(fontSize: 34),
                      widget.souk.arname),
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
                                    Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Text(widget.souk.description,
                                  style: GoogleFonts.cairo(
                                    fontSize: 22,
                                    color: Colors.grey[700],
                                    height:
                                        1.5,
                                  ),
                                  textAlign: TextAlign.justify),
                              SizedBox(
                                height: 16,
                              ),
                              
                              
                            
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
                                                widget.souk,
                                                ...landmarks,
                                                ...museum,
                                              ],
                                              initialPlace: widget.souk,
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
