import 'package:bookly_mvvm/core/api_service.dart';
import 'package:bookly_mvvm/core/errors/failure.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  ApiSerivce apiService;
  HomeRepoImpl({
    required this.apiService,
  });

  @override
  Future<Either<Failure, BookModel>> featchBesetSellerBooks() async {
    try {
      var reponse = await apiService.get(
          endpoint:
              "volumes?q=subject:programming&Filtering=Free-ebooks&sorting=newest");
      return right(BookModel.fromJson(reponse));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioErro(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, BookModel>> featchFeaturedBooks() {
    // TODO: implement featchFeaturedBooks
    throw UnimplementedError();
  }
}
