part of 'favourite_bloc.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.loading() = _Loading;
  const factory FavouriteState.allProduct({required List<CardModel> data}) =
      _AllProduct;
  const factory FavouriteState.failure() = _Failure;
}
