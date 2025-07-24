part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.loading() = _Loading;
  const factory ProductsState.success({
    required ProductsModel data,
    @Default([]) List<Datum> filteredProducts,
    @Default('') String searchQuery,
    @Default(false) bool isSearching,
  }) = _Success;
  const factory ProductsState.failure({required FailureModel data}) = _Failure;
}
