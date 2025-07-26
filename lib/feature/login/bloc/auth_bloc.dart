import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/db/secure_storage.dart';
import '../data/repositories/auth_repository.dart';
import '../../prodik/failure.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepositoryImpl impl;


  AuthBloc(this.impl) : super(const AuthState.initial()) {
    on<_CheckRegister>(_onCheckRegister);
    on<_Register>(_onRegister);
    on<_OtpVerify>(_onOtpVerify);
  }

  Future<void> _onCheckRegister(
      _CheckRegister event,
      Emitter<AuthState> emit,
      ) async {
    emit(const AuthState.loading());

    try {
      final result = await impl.login(event.number, "");
      result.fold(
            (failure) {
          if (failure.message.contains("registed") ||
              failure.message.contains("not registered")) {
            emit(AuthState.register(phone: event.number));
          } else {
            emit(AuthState.failure(failure));
          }
        },
            (data) {
          emit(AuthState.goToOtp(phone: event.number));
        },
      );
    } on DioException catch (e) {
      emit(AuthState.failure(Failure(message: e.message ?? e.toString())));
    } catch (e) {
      emit(AuthState.failure(Failure(message: e.toString())));
    }
  }

  Future<void> _onRegister(
      _Register event,
      Emitter<AuthState> emit,
      ) async {
    emit(const AuthState.loading());

    try {
      final result = await impl.register(
        event.number,
        event.name,
        event.password,
        event.surname,
      );

      result.fold(
            (failure) => emit(AuthState.failure(failure)),
            (data) => emit(AuthState.goToOtp(phone: event.number)),
      );
    } catch (e) {
      emit(AuthState.failure(Failure(message: e.toString())));
    }
  }

  Future<void> _onOtpVerify(
      _OtpVerify event,
      Emitter<AuthState> emit,
      ) async {
    emit(const AuthState.loading());

    try {
      final result = await impl.otpVerify(event.number, event.otpCode);

      result.fold(
            (failure) => emit(AuthState.failure(failure)),
            (data) async {

          emit(const AuthState.success());
        },
      );
    } catch (e) {
      emit(AuthState.failure(Failure(message: e.toString())));
    }
  }}
