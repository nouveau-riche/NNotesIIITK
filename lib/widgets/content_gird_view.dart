import 'package:flutter/material.dart';
import 'package:nnotesiiitk/widgets/content_grid_item.dart';

class ContentGridView extends StatelessWidget {
  final List<ContentGridItem> items;

  ContentGridView({this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2),
      itemBuilder: (ctx, index) {
        return items[index];
      },
      itemCount: items.length,
    );
  }
}
