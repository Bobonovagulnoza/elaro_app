part of 'new_products_bloc.dart';

@freezed
class NewProductsState with _$NewProductsState {
  const factory NewProductsState.loading() = _Loading;
  const factory NewProductsState.success({required ProductsModel data}) =
      _Success;
  const factory NewProductsState.failure({required FailureModel data}) =
      _Failure;
}
