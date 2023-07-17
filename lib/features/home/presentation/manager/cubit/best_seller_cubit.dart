import 'package:bloc/bloc.dart';
import 'package:bookly_mvvm/core/errors/failure.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo_impl.dart';
import 'package:meta/meta.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit({
    required this.homeRepo,
  }) : super(BestSellerInitial());

  HomeRepoImpl homeRepo;


  getBesetSellerBooks() async {
    emit(BestSellerLoading());
    var reposnse = await homeRepo.featchBesetSellerBooks();

    reposnse.fold((failure) => emit(BestSellerFail(errMessage: failure.errMessage)),
        (bookModel) => emit(BestSellerLoaded(model: bookModel)));
  }
}
