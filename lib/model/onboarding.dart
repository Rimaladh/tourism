import 'package:flutter/material.dart';

class UnboardingContent {
  String image;
  String title;
  String description;
  Color backgroundColor;

  UnboardingContent({
    required this.image,
    required this.title,
    required this.description,
    required this.backgroundColor,
  });
}

List<UnboardingContent> contentList = [
  UnboardingContent(
    image: ('images/home/medina-sousse.png'),
    title: ('Welcome to the Medina'), 
    description: ('Lets explore Together'), 
    backgroundColor: Colors.white
    ),


    UnboardingContent(
    image: ('images/home/medina-sousse.png'),
    title: ('Second page'), 
    description: ('Lets explore Second page'), 
    backgroundColor: Colors.white
    ),


    UnboardingContent(
    image: ('images/home/medina-sousse.png'),
    title: ('Welcome to Lst page'), 
    description: ('Lets explore Last page'), 
    backgroundColor: Colors.white
    ),
];
