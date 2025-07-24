part of 'sub_category_bloc.dart';

@freezed
class SubCategoryState with _$SubCategoryState {
  const factory SubCategoryState.loading() = _Loading;
  const factory SubCategoryState.success({required SubCategoryModel data}) =
      _Success;
  const factory SubCategoryState.failure({required FailureModel data}) =
      _Failure;
}
