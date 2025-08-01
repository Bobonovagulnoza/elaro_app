// part of 'product_bloc.dart';
//
// @freezed
// class ProductEvent with _$ProductEvent {
//   const factory ProductEvent.fetchData({required int id}) = _FetchData;
// }
part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetchData(int id) = _FetchData;
}

