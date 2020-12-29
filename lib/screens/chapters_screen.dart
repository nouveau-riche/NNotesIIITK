import 'package:flutter/material.dart';

class ChaptersScreen extends StatefulWidget {
  final String subject;

  ChaptersScreen({this.subject});

  @override
  _ChaptersScreenState createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(
      icon: Icon(
        Icons.note,
        color: Colors.black,
      ),
      child: Text(
        'Notes',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      icon: Icon(Icons.question_answer, color: Colors.black),
      child: Text(
        'Paper',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      icon: Icon(Icons.book, color: Colors.black),
      child: Text(
        'Books',
        style: TextStyle(color: Colors.black),
      ),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: 3, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black54),
        title: Text(
          widget.subject,
          style: TextStyle(color: Colors.black),
        ),
        bottom: TabBar(
          //indicatorColor: C,
          controller: _controller,
          tabs: list,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
        ],
      ),
    );
  }
}
