import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/model/landmarks.dart';

class History extends StatelessWidget {
  final Landmark landmark;

  const History({super.key, required this.landmark});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History of ${landmark.en_name}'),
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w400, color: Colors.black, fontSize: 23),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: landmark.history.map((section) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (section.title == 'Roman Toga')
                      Image.asset('images/toga.jpg'),
                    if (section.title != 'Roman Toga') ...[
                      Text(
                        section.title,
                        style: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        section.content,
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: const Color.fromARGB(255, 106, 105, 105),
                        ),
                      ),
                    ],
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
