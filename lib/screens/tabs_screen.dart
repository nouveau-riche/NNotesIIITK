import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './accounts.dart';
import './homePage.dart';
import './add_notes.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> screens = [
    HomePage(),
    AddNotes(),
    Account(),
  ];

  int pageIndex = 0;

  void selectPage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        currentIndex: pageIndex,
        selectedItemColor: Colors.black,
        elevation: 2,
        items: [
          const BottomNavigationBarItem(
            title: const Padding(
              padding: EdgeInsets.all(0),
            ),
            icon: const FaIcon(
              FontAwesomeIcons.school,
            ),
          ),
          const BottomNavigationBarItem(
            title: const Padding(
              padding: EdgeInsets.all(0),
            ),
            icon: const FaIcon(
              FontAwesomeIcons.plusCircle,
              color: Colors.lightBlue,
              size: 32,
            ),
          ),
          const BottomNavigationBarItem(
            title: const Padding(
              padding: EdgeInsets.all(0),
            ),
            icon: const FaIcon(
              FontAwesomeIcons.user,
            ),
          )
        ],
      ),
    );
  }
}
