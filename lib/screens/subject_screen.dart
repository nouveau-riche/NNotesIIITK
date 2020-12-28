import 'package:flutter/material.dart';

class SubjectScreen extends StatelessWidget {
  final String semesterName;
  final List<Widget> subjectList;

  SubjectScreen({this.semesterName, this.subjectList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          semesterName,
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black54),
      ),
      body: ListView(children: subjectList),
    );
  }
}
