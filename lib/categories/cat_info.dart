import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourism/model/categories.dart';

final cats = <Categorie>[
  Categorie(
    name: 'Guest Houses',
    icon: FaIcon(
      FontAwesomeIcons.house, // Example: Monument icon
      size: 20,
      color: Color.fromARGB(255, 138, 210, 238),
    ),
  ),
  Categorie(
    name: 'Restaurants',
    icon: FaIcon(
      FontAwesomeIcons.bowlRice, // Example: Monument icon
      size: 20,
      color: Color.fromARGB(255, 138, 210, 238),
    ),
  ),
  Categorie(
    name: 'Coffee Shops',
    icon: FaIcon(
      FontAwesomeIcons.coffee, // Example: Monument icon
      size: 20,
      color: Color.fromARGB(255, 138, 210, 238),
    ),
  ),
  Categorie(
    name: 'Souks',
    icon: FaIcon(
      FontAwesomeIcons.bagShopping, // Example: Monument icon
      size: 20,
      color: Color.fromARGB(255, 138, 210, 238),
    ),
  ),
  Categorie(
    name: 'Hotels',
    icon: FaIcon(
      FontAwesomeIcons.hotel, // Example: Monument icon
      size: 20,
      color: Color.fromARGB(255, 138, 210, 238),
    ),
  ),
  Categorie(
    name: 'Learn more',
    icon: FaIcon(
      FontAwesomeIcons.museum, // Example: Monument icon
      size: 20,
      color: Color.fromARGB(255, 138, 210, 238),
    ),
  ),
];
