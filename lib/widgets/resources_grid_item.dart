import 'package:flutter/material.dart';

class ResourceGridItem extends StatelessWidget {
  final String url;
  final String name;
  final Color color;

  ResourceGridItem({this.url, this.name,this.color});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4)),
                  gradient: LinearGradient(
                      colors: [color.withOpacity(0.9), color],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter),
                ),
                width: mq.width,
                child: Text(url),
              ),
            ),
            Container(
              height: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                color: Colors.white,
              ),
              child: Padding(
                  padding: EdgeInsets.only(left: 4, bottom: 3),
                  child: Text(name)),
            ),
          ],
        ),
      ),
    );
  }
}
