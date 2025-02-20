import 'package:flutter/material.dart';
import 'package:tourism/model/righteous_people.dart';
import 'package:tourism/righteous_people/onclick.dart';

class ShowPeople extends StatefulWidget {
  final List<RighteousPeople> pinfo;
  const ShowPeople({super.key, required this.pinfo});

  @override
  State<ShowPeople> createState() => _ShowPeopleState();
}

class _ShowPeopleState extends State<ShowPeople> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushNamed('/show_list');
            },
          )),
      body: Row(
        children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: widget.pinfo.length,
                  itemBuilder: (context, index) {
                    final p = widget.pinfo[index];
                    return Container(
                        margin: const EdgeInsets.all(23),
                        padding: const EdgeInsets.only(top: 7),
                        width: 200,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 209, 207, 207),
                              spreadRadius: 5,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(p.peopleImages),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              OnClick(showInfo: p),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      p.engname,
                                      style: TextStyle(fontSize: 24),
                                    )),
                              ),
                            )
                          ],
                        ));
                  }))
        ],
      ),
    );
  }
}
