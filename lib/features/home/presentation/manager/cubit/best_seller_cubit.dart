import 'package:bloc/bloc.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/home_repo.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit({
    required this.homeRepo,
  }) : super(BestSellerInitial());

  HomeRepo homeRepo;


  getBesetSellerBooks() async {
    emit(BestSellerLoading());
    var reposnse = await homeRepo.featchBesetSellerBooks();

    reposnse.fold((failure) => emit(BestSellerFail(errMessage: failure.errMessage)),
        (bookModel) => emit(BestSellerLoaded(model: bookModel)));
  }
}
