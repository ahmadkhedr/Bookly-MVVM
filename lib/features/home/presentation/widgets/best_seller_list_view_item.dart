import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import '../../data/models/book_model.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.item,
  });
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * .12,
            child: AspectRatio(
              aspectRatio: 3.5 / 6,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image:
                          NetworkImage(item.volumeInfo.imageLinks!.thumbnail),
                      fit: BoxFit.fill,
                    )),
              ),
            )),
        const SizedBox(
          width: 30.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  "${item.volumeInfo.title}\n",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              Text(
                item.volumeInfo.authors[0],
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 3.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${item.saleInfo.retailPrice!.amount.toString()} \$",
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  BestSellerRating(
                    maturityRating: item.volumeInfo.averageRating.toString(),
                    ratingCount: item.volumeInfo.ratingsCount.toString(),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
