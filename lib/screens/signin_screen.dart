import 'package:flutter/material.dart';

import '../utility/google_signin.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Log in to your account',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Get a new experience',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 5),
            child: Text(
              'of imagination',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: mq.height * 0.6,
            child: Image.asset(
              'assets/images/signup.png',
            ),
          ),
          buildDots(),
          SizedBox(
            height: mq.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 42,
                width: mq.width * 0.82,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 0,
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  color: Color.fromRGBO(91, 242, 252, 1),
                  onPressed: () {
                    signInWithGoogle(context);
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
        SizedBox(
          width: 4,
        ),
        Icon(
          Icons.brightness_1,
          color: Color.fromRGBO(66, 218, 245, 1),
          size: 14,
        ),
      ],
    );
  }
}
