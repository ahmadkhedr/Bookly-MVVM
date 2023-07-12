import 'package:bookly_mvvm/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_book_item.dart';
import 'featured_box_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CutomAppBar(),
          FeaturedBoxListView(),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "Best Seller",
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}
