part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.loading() = _Loading;
  const factory ProductState.success(ProductModel data) = _Success;
  const factory ProductState.failure(FailureModel failure) = _Failure;
}


