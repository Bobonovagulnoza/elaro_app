part of 'sub_category_bloc.dart';

@freezed
class SubCategoryEvent with _$SubCategoryEvent {
  const factory SubCategoryEvent.fetchData({required int id}) = _FetchData;
}
