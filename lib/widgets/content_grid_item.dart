import 'package:flutter/material.dart';

class ContentGridItem extends StatelessWidget {
  final String url;
  final String name;

  ContentGridItem({this.url, this.name});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        color: Colors.grey,
        child: Text(url),
      ),
      footer: Padding(
          padding: EdgeInsets.only(left: 4, bottom: 3), child: Text(name)),
    );
  }
}
