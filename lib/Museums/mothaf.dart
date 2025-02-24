import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/Museums/history_musee.dart';
import 'package:tourism/Museums/musee1.dart';
import 'package:tourism/model/musees.dart';
import 'package:tourism/Museums/musee_info.dart';

class Museum extends StatefulWidget {
  final List<Musee> museum;
  const Museum({super.key, required this.museum});

  @override
  State<Museum> createState() => _MuseumState();
}

class _MuseumState extends State<Museum> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: SizedBox(
                height: 360,
                width: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: museum.length,
                    itemBuilder: (context, index) {
                      final m = museum[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Musee1(
                                m: m,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(23),
                          padding: const EdgeInsets.only(top: 7),
                          width: 220,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withAlpha(90),
                                spreadRadius: 5,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    m.image,
                                    width: 190,
                                    height: 190,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Flexible(
                                    child: Column(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        m.engname,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cairo(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        m.arbname,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cairo(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                                TextButton(
                                  onPressed: ()  {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Musee1(m: m),
                                      ),
                                    );
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
                    })))
      ],
    );
  }
}
