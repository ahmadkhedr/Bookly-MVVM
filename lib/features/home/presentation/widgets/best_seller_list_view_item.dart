import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: AspectRatio(
              aspectRatio: 3.5 / 6,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage(AssetsData.test_image),
                      fit: BoxFit.fill,
                    )),
              ),
            ))
      ],
    );
  }
}
