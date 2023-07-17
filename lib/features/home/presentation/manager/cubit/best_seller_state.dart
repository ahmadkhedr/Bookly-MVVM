part of 'best_seller_cubit.dart';

@immutable
abstract class BestSellerState {}

class BestSellerInitial extends BestSellerState {}

class BestSellerLoading extends BestSellerState {}

class BestSellerLoaded extends BestSellerState {
  final BookModel model;

  BestSellerLoaded({
    required this.model,
  });
}

class BestSellerFail extends BestSellerState {
  final String errMessage;
  BestSellerFail({
    required this.errMessage,
  });
}
