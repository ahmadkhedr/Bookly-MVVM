import 'package:bookly_mvvm/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CutomAppBar(),
        FeaturedBookItem(),
      ],
    );
  }
}

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .22,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
            image: const DecorationImage(
                image: AssetImage(
                  AssetsData.test_image,
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
