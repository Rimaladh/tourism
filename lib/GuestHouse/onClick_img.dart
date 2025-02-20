import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/Museums/musee_info.dart';
import 'package:tourism/landmark/landmark_info.dart';
import 'package:tourism/maps/show_map.dart';
import 'package:tourism/model/guest_house.dart';

class OnclickImg extends StatefulWidget {
  final GuestHouse listHouse;
  const OnclickImg({super.key, required this.listHouse});

  @override
  State<OnclickImg> createState() => _OnclickImgState();
}

class _OnclickImgState extends State<OnclickImg> {
  // Future<void> _launchPhoneDialer(String phoneNumber) async {
  //   final Uri url = Uri.parse("tel:$phoneNumber");
  //   try {
  //     if (!await launchUrl(url)) {
  //       print('Could not launch $url');
  //       throw 'Could not launch $url';
  //     }
  //   } catch (e) {
  //     print('Error: $e'); // This will print any exceptions to the console.
  //   }
  // }

  // Future<void> _launchWebsite(String url) async {
  //   print('Attempting to launch URL: $url'); // Debug log
  //   if (url.isEmpty) {
  //     print('URL is empty'); // Debug log
  //     return;
  //   }
  //   final Uri uri = Uri.parse(url);
  //   try {
  //     if (!await launchUrl(uri)) {
  //       print('Could not launch $uri'); // Debug log
  //       throw 'Could not launch $uri';
  //     }
  //   } catch (e) {
  //     print('Error: $e'); // Debug log
  //   }
  // }

  // void _showPhoneNumbers(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) {
  //       return Container(
  //         padding: EdgeInsets.all(10),
  //         height: 150,
  //         child: Column(
  //           children: [
  //             Text("Select a Number",
  //                 style: GoogleFonts.cairo(
  //                     fontSize: 22, fontWeight: FontWeight.bold)),
  //             Divider(),
  //             Expanded(
  //               child: ListView.builder(
  //                 itemCount: widget.listHouse.phone.length,
  //                 itemBuilder: (context, index) {
  //                   return ListTile(
  //                     leading: Icon(Icons.phone, color: Colors.blue),
  //                     title: Text(widget.listHouse.phone[index]),
  //                     onTap: () =>
  //                         _launchPhoneDialer(widget.listHouse.phone[index]),
  //                   );
  //                 },
  //               ),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 237, 237),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushNamed('/guestHouse');
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
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: AnotherCarousel(
                        images: widget.listHouse.images
                            .map(
                              (item) => Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            )
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
                        widget.listHouse.enname,
                        style: GoogleFonts.cairo(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                      ),
                    ),
                  ),
                  Text(
                      style: GoogleFonts.cairo(fontSize: 34),
                      widget.listHouse.arname),
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
                              Text(widget.listHouse.description,
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
                                  Text('Price: ${widget.listHouse.price} dt',
                                      style: GoogleFonts.cairo(
                                        fontSize: 22,
                                        color: Colors.green, // Change color
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text('/ night',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 134, 133, 133)))
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Email: ${widget.listHouse.email}',
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
                                  'Phone: ${widget.listHouse.phone}',
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
                                        FontAwesomeIcons
                                            .mapPin, // Example: Monument icon
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      onPressed: () async {
                                        await Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => Maps(
                                              places: [
                                                widget
                                                    .listHouse, // Pass guest house as a list of places
                                                ...landmarks, // Assuming landmarks is already defined
                                                ...museum, // Assuming museum is already defined
                                              ],
                                              initialPlace: widget
                                                  .listHouse, // Focus map on the selected guest house
                                            ),
                                          ),
                                        );
                                      },
                                      label: Text('See on Map')),
                                  SizedBox(width: 16),
                                  TextButton.icon(
                                      icon: FaIcon(
                                        FontAwesomeIcons
                                            .heart, // Example: Monument icon
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
