import 'package:flutter/material.dart';
import 'package:tourism/model/righteous_people.dart';

class OnClick extends StatelessWidget {
  final RighteousPeople showInfo;

  const OnClick({super.key, required this.showInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushNamed('/righteous_info');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: const Offset(0, -80),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    showInfo.peopleImages,
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -70),
                child: Text(
                  showInfo.engname,
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: Text(
              //     showInfo.peopleInfo, // Assuming you have a description field
              //     textAlign: TextAlign.center,
              //     style: const TextStyle(fontSize: 18),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
