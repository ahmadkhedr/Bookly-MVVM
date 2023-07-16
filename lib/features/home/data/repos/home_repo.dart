import 'package:bookly_mvvm/core/errors/failure.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, BookModel>> featchFeaturedBooks();
  Future<Either<Failure, BookModel>> featchBesetSellerBooks();
}
