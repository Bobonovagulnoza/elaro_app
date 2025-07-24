part of  'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.register({required String phone}) = _RegisterNeeded;
  const factory AuthState.goToOtp({required String phone}) = _GoToOtp;
  const factory AuthState.success() = _Success;
  const factory AuthState.failure(Failure failure) = _Failure;
}