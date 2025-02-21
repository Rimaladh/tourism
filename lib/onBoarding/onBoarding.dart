import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/model/onboarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController? _controller;
  int currentIndex = 0;
  double percentage = 0.25;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: contentList[currentIndex].backgroundColor,
      body: SafeArea(
        child: Column(children: [
          Expanded(
              flex: 5,
              child: PageView.builder(
                  controller: _controller,
                  itemCount: contentList.length,
                  onPageChanged: (int index) {
                    if (index >= currentIndex) {
                      setState(() {
                        currentIndex = index;
                        percentage += 0.25;
                      });
                    } else {
                      setState(() {
                        currentIndex = index;
                        percentage -= 0.25;
                      });
                    }
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            children: [
                              Text(
                                contentList[index].title,
                                style: GoogleFonts.cairo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 28.0,
                                    letterSpacing: 0.24,
                                    color: Colors.white),
                              ),
                              const SizedBox(height:12),
                              Text(
                                contentList[index].description,
                                style: GoogleFonts.cairo(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.0,
                                    letterSpacing: 0.24,
                                    color: Colors.white70),
                              )
                            ],
                          ),
                        ),
                        Image.asset(contentList[index].image)
                      ],
                    );
                  })),
          Expanded(
              child: Container(
            color: Colors.red,
          ))
        ]),
      ),
    );
  }
}
