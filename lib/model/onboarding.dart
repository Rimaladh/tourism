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
      image: ('images/on_boadring/first.png'),
      title: ('Welcome to the Medina'),
      description: ('Lets explore Together'),
      backgroundColor: const Color.fromARGB(255, 79, 171, 246)),

  UnboardingContent(
      image: ('images/on_boadring/first.png'),
      title: ('Second page'),
      description: ('Lets explore Second page'),
      backgroundColor: const Color.fromARGB(255, 132, 197, 249)),
  UnboardingContent(
      image: ('images/home/medina-sousse.png'),
      title: ('Welcome to Lst page'),
      description: ('Lets explore Last page'),
      backgroundColor: const Color.fromARGB(255, 160, 206, 244)),
];
