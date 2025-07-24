part of 'brends_bloc.dart';

@freezed
class BrendsState with _$BrendsState {
  const factory BrendsState.loading() = _Loading;
  const factory BrendsState.success({required BrandsModel data}) = _Success;
  const factory BrendsState.failure({required FailureModel data}) = _Failure;
}
