part of 'hit_products_bloc.dart';

@freezed
class HitProductsEvent with _$HitProductsEvent {
  const factory HitProductsEvent.fetchData() = _FetchData;
}
