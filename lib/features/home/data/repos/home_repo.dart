import 'package:bookly_mvvm/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<BookModel, BookModel>> featchFeaturedBooks();
  featchBesetSellerBooks();
}
