part of 'favourite_bloc.dart';

@freezed
class FavouriteEvent with _$FavouriteEvent {
  const factory FavouriteEvent.fetchData() = _FetchData;
  const factory FavouriteEvent.addProduct(Data data) = _AddProduct;
  const factory FavouriteEvent.deleteProduct(int id) = _DeleteProduct;
  // const factory FavouriteEvent.increment(int id) = _Increment;
  // const factory FavouriteEvent.decrement(int id) = _Decrement;
}
