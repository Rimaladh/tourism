import 'package:flutter/material.dart';
import 'package:tourism/model/categories.dart';

class CatDeco extends StatelessWidget {
  final List<Categorie> listCateg;

  const CatDeco({super.key, required this.listCateg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 2,
        ),
        itemCount: listCateg.length,
        itemBuilder: (context, index) {
          final lcateg = listCateg[index];
          return GestureDetector(
            onTap: () {
              String route = '/show_list';
              if (lcateg.name == 'Guest Houses') {
                route = '/guestHouse';
              } else if (lcateg.name == 'Restaurants') {
                route = '/restaurants';
              } else if (lcateg.name == 'Souks') {
                route = '/SoukList';
              } else if (lcateg.name == 'Coffee Shops') {
                route = '/CoffeList';
              }

              Navigator.of(context).pushNamed(route);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(120),
                    spreadRadius: 3,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  lcateg.icon,
                  const SizedBox(height: 8),
                  Text(
                    lcateg.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2B6CB0),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
