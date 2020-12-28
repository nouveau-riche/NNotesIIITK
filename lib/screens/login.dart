import 'package:flutter/material.dart';

import '../utility/google_signin.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          if (index == 0) buildPage1(),
          if (index == 1) buildPage2(),
          if (index == 2) buildPage3(),
          buildDots(),
        ],
      ),
    );
  }

  Widget buildPage1() {
    final mq = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: mq.height * 0.6,
          child: Image.asset(
            'assets/images/screen1.png',
          ),
        ),
        SizedBox(
          height: mq.height * 0.1,
        ),
        Text(
          'Study free notes & help',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          'your classmates',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: mq.height * 0.1,
        ),
      ],
    );
  }

  Widget buildPage2() {
    final mq = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: mq.height * 0.6,
          child: Image.asset(
            'assets/images/screen2.png',
          ),
        ),
        SizedBox(
          height: mq.height * 0.1,
        ),
        Text(
          'Having Notes at a good place can',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          'save you from backlog.',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: mq.height * 0.1,
        ),
      ],
    );
  }

  Widget buildPage3() {
    final mq = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: mq.height * 0.6,
          child: RaisedButton(
            child: Text('GET STARTED'),
            onPressed: () {
              signInWithGoogle(context).whenComplete(() {
                print('done successfully');
              });
            },
          ),
        ),
        SizedBox(
          height: mq.height * 0.1,
        ),
        Text(
          'Having Notes at a good place can',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          'save you from backlog.',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: mq.height * 0.1,
        ),
      ],
    );
  }

  Widget buildDots() {
    final mq = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: mq.width * 0.43,
        ),
        Icon(
          Icons.brightness_1,
          color: index == 0
              ? Color.fromRGBO(66, 218, 245, 1)
              : Color.fromRGBO(145, 224, 242, 1),
          size: 17,
        ),
        SizedBox(
          width: 4,
        ),
        Icon(
          Icons.brightness_1,
          color: index == 1
              ? Color.fromRGBO(66, 218, 245, 1)
              : Color.fromRGBO(145, 224, 242, 1),
          size: 17,
        ),
        SizedBox(
          width: 4,
        ),
        Icon(
          Icons.brightness_1,
          color: index == 2
              ? Color.fromRGBO(66, 218, 245, 1)
              : Color.fromRGBO(145, 224, 242, 1),
          size: 17,
        ),
        SizedBox(
          width: mq.width * 0.15,
        ),
        if (index < 2) buildNextButton(),
      ],
    );
  }

  Widget buildNextButton() {
    return SizedBox(
      height: 26,
      width: 75,
      child: RaisedButton(
        elevation: 0,
        color: Color.fromRGBO(66, 218, 245, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        child: Text(
          'Next',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        onPressed: () {
          setState(() {
            if (index < 2) {
              index++;
            }
          });
        },
      ),
    );
  }
}
