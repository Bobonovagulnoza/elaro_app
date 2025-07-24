part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loading() = _Loading;
  const factory CategoriesState.success({required CategoriesModel data}) =
      _Success;
  const factory CategoriesState.failure({required FailureModel data}) =
      _Failure;
}
