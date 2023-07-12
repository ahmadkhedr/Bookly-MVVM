import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .22,
      child: AspectRatio(
        // ==>Width /height
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
