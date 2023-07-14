import 'package:bookly_mvvm/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';

import 'custom_app_bar.dart';
import 'featured_box_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CutomAppBar(),
            FeaturedBoxListView(),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Best Seller",
              style: Styles.titleMedium,
            ),
            BestSellectListView(),
          ],
        ),
      ),
    );
  }
}
