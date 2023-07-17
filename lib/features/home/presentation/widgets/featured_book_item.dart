import 'package:flutter/material.dart';

import '../../data/models/book_model.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({
    super.key,
    required this.item,
  });
  final Item item;
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
            image: DecorationImage(
                image: NetworkImage(
                  item.volumeInfo.imageLinks!.thumbnail,
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
