import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChaptersScreen extends StatefulWidget {
  final String subject;

  ChaptersScreen({this.subject});

  @override
  _ChaptersScreenState createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  List<Widget> list = [
    Tab(
      icon: FaIcon(
        FontAwesomeIcons.stickyNote,
        color: Colors.black,
        size: 20,
      ),
      child: Text(
        'Notes',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      icon: FaIcon(
        FontAwesomeIcons.paperclip,
        color: Colors.black,
        size: 20,
      ),
      child: Text(
        'Paper',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      icon: FaIcon(
        FontAwesomeIcons.book,
        color: Colors.black,
        size: 20,
      ),
      child: Text(
        'Books',
        style: TextStyle(color: Colors.black),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black54),
        title: Text(
          widget.subject,
          style: TextStyle(color: Colors.black),
        ),
        bottom: TabBar(
          indicatorColor: Color.fromRGBO(91, 242, 252, 1),
          controller: _controller,
          tabs: list,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          buildNotesTab(),
          buildPaperTab(),
          buildBooksTab(),
        ],
      ),
    );
  }

  Widget buildNotesTab() {
    return Column(
      children: [Text('notes')],
    );
  }

  Widget buildPaperTab() {
    return Column(
      children: [Text('paper')],
    );
  }

  Widget buildBooksTab() {
    return Column(
      children: [Text('books')],
    );
  }

  Widget fetchPaper() {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('papers')
            .doc(widget.subject)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var _data = snapshot.data;
            return Column();
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget fetchNotes() {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('notes')
            .doc(widget.subject)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var _data = snapshot.data;
            return Column();
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget fetchBooks() {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('books')
            .doc(widget.subject)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var _data = snapshot.data;
            return Column();
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
