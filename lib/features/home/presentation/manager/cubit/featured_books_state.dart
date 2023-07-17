part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksLoaded extends FeaturedBooksState {
  final BookModel model;
  FeaturedBooksLoaded({
    required this.model,
  });
}

class FeaturedBooksFail extends FeaturedBooksState {
  final String errMessage;
  FeaturedBooksFail({
    required this.errMessage,
  });
}
