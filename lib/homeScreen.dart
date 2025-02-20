import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/Museums/mothaf.dart';
import 'package:tourism/Museums/musee_info.dart';
import 'package:tourism/categories/cat_deco.dart';
import 'package:tourism/categories/cat_info.dart';
import 'package:tourism/landmark/landmark_conatiner.dart';
import 'package:tourism/landmark/landmark_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // -----------------Background Image-----------------
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'images/home/medina-sousse.png',
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
          ),
          // -----------------Arabic Quote Image Positioned in the Middle of the Background -----------------
          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            left: MediaQuery.of(context).size.width * 0.2,
            right: MediaQuery.of(context).size.width * 0.2,
            child: Image.asset(
              'images/home/k.png',
              width: MediaQuery.of(context).size.width * 0.7,
            ),
          ),
          // -----------------Search Bar-----------------
          Positioned(
            top: MediaQuery.of(context).size.height * 0.36,
            left: 16,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Dive In...',
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.cairo(
                          color: Color.fromARGB(255, 36, 76, 92),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 36, 76, 92),
                    ),
                    onPressed: () {
                      // Add search functionality here
                    },
                  ),
                ],
              ),
            ),
          ),
          // -----------------Background Container-----------------
          Positioned(
            top: MediaQuery.of(context).size.height * 0.44,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "عسلامة   Let’s dive into history",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                        height: 3,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    // -----------------Divider -----------------
                    Transform.translate(
                      offset: const Offset(0, -100),
                      child: Image.asset(
                        'images/home/text_divider.png',
                        width: 200,
                      ),
                    ),

                    Transform.translate(
                      offset: const Offset(-120, -170),
                      child: Text(
                        'Categories',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-1, -170),
                      child: CatDeco(listCateg: cats),
                    ),

                    // -----------------Divider -----------------
                    Transform.translate(
                      offset: const Offset(0, -190),
                      child: Image.asset(
                        'images/home/try.png',
                        width: 200,
                        color: Color.fromARGB(255, 104, 152, 171),
                      ),
                    ),

                    // -----------------Landmarks Title -----------------
                    Transform.translate(
                      offset: const Offset(-40, -210),
                      child: Text(
                        'Landmarks That Tell Stories',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-40, -210),
                      child: LandDeco(landmark: landmarks),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -240),
                      child: Image.asset(
                        'images/home/try.png',
                        color: Color.fromARGB(255, 104, 152, 171),
                        width: 200,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-4, -260),
                      child: Text(
                        'Museums: Where History Whispers',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-1, -250),
                      child: Museum(museum: museum),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
