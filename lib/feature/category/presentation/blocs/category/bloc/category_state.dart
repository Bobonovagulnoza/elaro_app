part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.success({
    required CategoryModel data,
    required List<String> colors,
    required String selectedColor,
    required String minPrice,
    required String maxPrice,
  }) = _Success;
  const factory CategoryState.failure({required FailureModel data}) = _Failure;
}
