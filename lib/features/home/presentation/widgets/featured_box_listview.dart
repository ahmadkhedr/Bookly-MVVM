import 'package:flutter/material.dart';

import '../../data/models/book_model.dart';
import 'featured_book_item.dart';

class FeaturedBoxListView extends StatelessWidget {
  const FeaturedBoxListView({super.key, required this.model});
  final BookModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .30,
      child: ListView.builder(
          itemCount: model.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: FeaturedBookItem(
                item: model.items[index],
              ),
            );
          }),
    );
  }
}
