import 'package:flutter/material.dart';
import 'package:tourism/model/learn_more.dart';

class ListDeco extends StatelessWidget {
  final List<LearnMore> lm;
  const ListDeco({super.key, required this.lm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushNamed('/homeScreen');
          },
        ),
      ),
      body: Row(
        children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: lm.length,
                  itemBuilder: (context, index) {
                    final more = lm[index];
                    return Container(
                      margin: const EdgeInsets.all(23),
                      padding: const EdgeInsets.only(top: 7),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 209, 207, 207),
                            spreadRadius: 5,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/righteous_info');
                                  },
                                  child: Text(
                                    more.title,
                                    style: TextStyle(fontSize: 24),
                                  )),
                            ),
                          ]),
                    );
                  }))
        ],
      ),
    );
  }
}
