import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/styles.dart';

class BestSellerRating extends StatelessWidget {
  const BestSellerRating({
    super.key,
    required this.maturityRating,
    required this.ratingCount,
  });
  final String maturityRating;
  final String ratingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 20.0,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          maturityRating,
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text("($ratingCount)",
            style: Styles.textStyle14.copyWith(
              color: Colors.grey,
            )),
      ],
    );
  }
}
