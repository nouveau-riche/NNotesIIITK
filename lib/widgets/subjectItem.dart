import 'package:flutter/material.dart';
import 'package:nnotesiiitk/screens/chapters_screen.dart';
import 'package:nnotesiiitk/utility/slide_right_transition.dart';

class SubjectItem extends StatelessWidget {
  final String subjectName;
  final String unDraw;
  final Color color;

  SubjectItem({this.subjectName, this.unDraw, this.color});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(SlideRightRoute(
            page: ChaptersScreen(
          subject: subjectName,
        )));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        margin: EdgeInsets.all(mq.width * 0.025),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: mq.height * 0.19,
              width: mq.width,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7), topRight: Radius.circular(7)),
              ),
              child: Center(
                  child: Container(
                      height: mq.height * 0.19,
                      width: mq.width * 0.68,
                      child: Image.asset(
                        unDraw,
                        fit: BoxFit.fill,
                      ))),
            ),
            Container(
              height: mq.height * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(7),
                    bottomLeft: Radius.circular(7)),
              ),
              child: Align(
                child: Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      subjectName,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
