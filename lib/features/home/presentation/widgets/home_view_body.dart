import 'package:bookly_mvvm/core/utils/styles.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/cubit/best_seller_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view.dart';

import 'custom_app_bar.dart';
import 'featured_box_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CutomAppBar(),
            BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
                builder: (context, state) {
              if (state is FeaturedBooksLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is FeaturedBooksLoaded) {
                BookModel model = (state).model;
                return FeaturedBoxListView(
                  model: model,
                );
              } else if (state is FeaturedBooksFail) {
                return Center(child: Text((state.errMessage)));
              }
              return Container();
            }),
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              "Best Seller",
              style: Styles.textStyle18,
            ),
            const SizedBox(
              height: 20.0,
            ),
            BlocBuilder<BestSellerCubit, BestSellerState>(
                builder: (context, state) {
              if (state is BestSellerLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is BestSellerLoaded) {
                BookModel model = (state).model;
                return BestSellerListView(
                  bookModel: model,
                );
              } else if (state is BestSellerFail) {
                return Center(child: Text((state.errMessage)));
              }
              return Container();
            }),
          ],
        ),
      ),
    );
  }
}
