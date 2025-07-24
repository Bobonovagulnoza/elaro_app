part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.fetchData() = _FetchData;
  const factory ProductsEvent.searchProducts(String query) = _SearchProducts;
  const factory ProductsEvent.clearSearch() = _ClearSearch;
}
