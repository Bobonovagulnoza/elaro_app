
part of "auth_bloc.dart";
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkRegister(String number) = _CheckRegister;
  const factory AuthEvent.register({
    required String number,
    required String name,
    required String surname,
    required String password,
  }) = _Register;

  const factory AuthEvent.otpVerify({
    required String number,
    required String otpCode,
  }) = _OtpVerify;
}