import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/Souks/onclick_souk.dart';
import 'package:tourism/model/souks.dart';

class SoukList extends StatefulWidget {
  final List<Souk> souk;
  const SoukList({super.key, required this.souk});

  @override
  State<SoukList> createState() => _SoukListState();
}

class _SoukListState extends State<SoukList> {
  Set<int> favoriteSouk = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 211, 229, 244),
        appBar: AppBar(
          title: Text(
            "Souks",
            style: GoogleFonts.cairo(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
            onPressed: () {
              Navigator.of(context).pushNamed('/homeScreen');
            },
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 128, 171, 217),
                  Color(0xFF5398D9)
                ], // Smooth gradient effect
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: widget.souk.length,
                itemBuilder: (context, index) {
                  final p = widget.souk[index];
                  bool isFavorite = favoriteSouk.contains(index);

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OnclickSouk(souk: p),
                                ),
                              );
                            },
                            child: Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withAlpha(120),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  )
                                ],
                              ),
                              child: Image.asset(
                                p.images[0],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        // Favorite Icon
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withAlpha(190),
                            ),
                            child: IconButton(
                              icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite ? Colors.red : Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (isFavorite) {
                                    favoriteSouk.remove(index);
                                  } else {
                                    favoriteSouk.add(index);
                                  }
                                });

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content:
                                      Text("${p.enname} Added to favorite"),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    onPressed: () {
                                      setState(() {
                                        favoriteSouk.remove(index);
                                      });
                                    },
                                  ),
                                ));
                              },
                            ),
                          ),
                        ),

                        // House Details Card
                        Positioned(
                          bottom: 10,
                          left: 10,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white.withAlpha(170),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      p.enname, // House name
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  p.loction, // House location
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 81, 80, 80)),
                                ),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )),
          ],
        ));
  }
}
