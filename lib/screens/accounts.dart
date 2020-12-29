import 'package:flutter/material.dart';
import 'package:nnotesiiitk/screens/welcome1.dart';

import '../utility/slide_right_transition.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
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
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (ctx) => Welcome()),
                    (route) => false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
