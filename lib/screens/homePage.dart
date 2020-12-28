import 'package:flutter/material.dart';

import '../widgets/gridItem.dart';
import '../data/semester_subject.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Hey nikunj,\nWelcome to IIITK',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), color: Colors.blue),
              width: 35,
              height: 48,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: mq.height * 0.04,
            ),
            Padding(
                padding: EdgeInsets.only(left: mq.width * 0.04),
                child: Text(
                  'Notes',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                )),
            SizedBox(
              height: mq.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridItem(
                  color: Color.fromRGBO(212, 255, 254, 1),
                  semester: 'First',
                  subjectList: first,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: mq.height * 0.032,
                    ),
                    GridItem(
                      color: Color.fromRGBO(255, 239, 212, 1),
                      semester: 'Second',
                      subjectList: second,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridItem(
                  color: Color.fromRGBO(255, 212, 212, 1),
                  semester: 'Third',
                  subjectList: third,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: mq.height * 0.032,
                    ),
                    GridItem(
                      color: Color.fromRGBO(239, 212, 255, 1),
                      semester: 'Fourth',
                      subjectList: fourth,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridItem(
                  color: Color.fromRGBO(246, 255, 212, 1),
                  semester: 'Fifth',
                  subjectList: fifth,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: mq.height * 0.032,
                    ),
                    GridItem(
                      color: Color.fromRGBO(227, 222, 223, 1),
                      semester: 'Sixth',
                      subjectList: sixth,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridItem(
                  color: Color.fromRGBO(212, 225, 255, 1),
                  semester: 'Seventh',
                  subjectList: seventh,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: mq.height * 0.032,
                    ),
                    GridItem(
                      color: Color.fromRGBO(216, 255, 212, 1),
                      semester: 'Eight',
                      subjectList: eight,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
