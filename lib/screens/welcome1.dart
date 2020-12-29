import 'package:flutter/material.dart';

import './welcome2.dart';
import '../utility/slide_right_transition.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5),
            child: Text(
              'Study free notes & help',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'your classmates',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: mq.height * 0.6,
            child: Image.asset(
              'assets/images/screen1.png',
            ),
          ),
          SizedBox(
            height: mq.height * 0.035,
          ),
          buildDots(),
          SizedBox(
            height: mq.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: mq.width * 0.82,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 0,
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  color: Color.fromRGBO(91, 242, 252, 1),
                  onPressed: () {
                    Navigator.of(context)
                        .push(SlideRightRoute(page: Welcome2()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.brightness_1,
          color: Color.fromRGBO(91, 242, 252, 1),
          size: 14,
        ),
        SizedBox(
          width: 4,
        ),
        Icon(
          Icons.brightness_1,
          color: Color.fromRGBO(145, 224, 242, 1),
          size: 14,
        ),
        SizedBox(
          width: 4,
        ),
        Icon(
          Icons.brightness_1,
          color: Color.fromRGBO(145, 224, 242, 1),
          size: 14,
        ),
      ],
    );
  }
}
