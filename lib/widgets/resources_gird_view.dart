import 'package:flutter/material.dart';

import '../widgets/resources_grid_item.dart';

class ContentGridView extends StatelessWidget {
  final List<ResourceGridItem> items;

  ContentGridView({this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.2),
      itemBuilder: (ctx, index) {
        return items[index];
      },
      itemCount: items.length,
    );
  }
}
