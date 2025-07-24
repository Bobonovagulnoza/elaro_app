part of 'hit_products_bloc.dart';

@freezed
class HitProductsState with _$HitProductsState {
  const factory HitProductsState.loading() = _Loading;
  const factory HitProductsState.success({required ProductsModel data}) =
      _Success;
  const factory HitProductsState.failure({required FailureModel data}) =
      _Failure;
}
