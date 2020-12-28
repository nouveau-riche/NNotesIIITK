import 'package:flutter/material.dart';

import '../screens/subject_screen.dart';

class GridItem extends StatelessWidget {
  final Color color;
  final String semester;
  final List<Widget> subjectList;

  GridItem({this.color, this.semester, this.subjectList});

  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => SubjectScreen(
                  semesterName: semester,
                  subjectList: subjectList,
                )));
      },
      child: Container(
        height: mq.height * 0.22,
        width: mq.width * 0.43,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.9), color],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  semester,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
              ],
            )),
      ),
    );
  }
}
