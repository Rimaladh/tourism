import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  final String itemName; // Pass the item name for the SnackBar message

  const FavoriteButton({super.key, required this.itemName});

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false; // Track if item is a favorite

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border, // Change icon
        color: isFavorite ? Colors.red : Colors.grey, // Change color
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite; // Toggle favorite state
        });

        
      },
    );
  }
}
