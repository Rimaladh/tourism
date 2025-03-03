import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/GuestHouse/onClick_img.dart';
import 'package:tourism/model/guest_house.dart';

class HouseDeco extends StatefulWidget {
  final List<GuestHouse> house;
  const HouseDeco({super.key, required this.house});

  @override
  State<HouseDeco> createState() => _HouseDecoState();
}

class _HouseDecoState extends State<HouseDeco> {
  Set<int> favoriteHouses = {}; // Store indices of favorited houses

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 211, 229, 244),
        appBar: AppBar(
          title: Text(
            "Guest Houses", // Add a title for a real AppBar look
            style: GoogleFonts.cairo(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent, // Makes it stylish
          elevation: 0, // Removes default shadow
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Colors.white, size: 28), // White icon
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
                itemCount: widget.house.length,
                itemBuilder: (context, index) {
                  final p = widget.house[index];
                  bool isFavorite = favoriteHouses.contains(index);

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Stack(
                      children: [
                        // House Card with Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      OnclickImg(listHouse: p),
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
                                    color: Colors.black.withOpacity(0.2),
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
                                    favoriteHouses.remove(index);
                                  } else {
                                    favoriteHouses.add(index);
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
                                        favoriteHouses.remove(index);
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.star,
                                            color: Colors.orange, size: 16),
                                        Text(p.rating),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$${p.price}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const Text(
                                          "/night",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 134, 133, 133),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
