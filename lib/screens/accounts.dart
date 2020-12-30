import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/welcome1.dart';
import '../utility/google_signin.dart';

class Account extends StatelessWidget {
  final User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: mq.height * 0.035,
          ),
          buildProfileContainer(context),
          buildContainer(context),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.stickyNote,
              color: Color.fromRGBO(255, 196, 234, 1),
            ),
            title: Text('Shared Notes'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 19,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.alarm,
              color: Color.fromRGBO(196, 255, 199, 1),
            ),
            title: Text(
              'Remainders',
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 19,
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.gift,
              color: Color.fromRGBO(209, 196, 255, 1),
            ),
            title: Text("What's New"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 19,
            ),
          ),
          Spacer(),
          buildSignOutButton(context),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  Widget buildProfileContainer(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Container(
      height: mq.height * 0.15,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              width: mq.width * 0.2,
              child: Image.network(user.photoURL),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.email,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                user.displayName,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildContainer(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(10),
      height: mq.height * 0.15,
      margin: EdgeInsets.symmetric(horizontal: 15),
      color: Color.fromRGBO(212, 255, 254, 1),
    );
  }

  Widget buildSignOutButton(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return SizedBox(
      height: 42,
      width: mq.width * 0.92,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 0,
        child: Text(
          'Continue',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        color: Color.fromRGBO(91, 242, 252, 1),
        onPressed: () {
          signOutGoogle();
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (ctx) => Welcome()), (route) => false);
        },
      ),
    );
  }
}
