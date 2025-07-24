part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.loading() = _Loading;
  const factory BannerState.success({required BannerModel data}) = _Success;
  const factory BannerState.failure({required FailureModel data}) = _Failure;
}
