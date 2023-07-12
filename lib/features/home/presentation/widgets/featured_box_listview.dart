import 'package:flutter/material.dart';

import 'featured_book_item.dart';

class FeaturedBoxListView extends StatelessWidget {
  const FeaturedBoxListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .22,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: FeaturedBookItem(),
            );
          }),
    );
  }
}
