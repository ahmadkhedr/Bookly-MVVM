import 'package:bloc/bloc.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRepo}) : super(FeaturedBooksInitial());

  HomeRepo homeRepo;

  Future getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.featchFeaturedBooks();

    result.fold(
        (failure) => emit(FeaturedBooksFail(errMessage: failure.errMessage)),
        (bookModel) => emit(FeaturedBooksLoaded(model: bookModel)));
  }
}
