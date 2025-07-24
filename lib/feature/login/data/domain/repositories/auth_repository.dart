import 'package:dartz/dartz.dart';

import '../../../../../core/api/api.dart';
import '../../../../../core/interceptor/interceptor.dart';
import '../../../../prodik/failure.dart';
import '../../models/login_model/login_model.dart';
import '../../models/login_model/send_otp_model.dart';
import '../../repositories/auth_repository.dart';

abstract class AuthRepository {
  Future<Either<Failure, SendOtpModel>> login(String phone, String password);
  Future<Either<Failure, SendOtpModel>> register(String phone, String name, String password, String surname);
  Future<Either<Failure, LoginModel>> otpVerify(String phone, String otp);
  factory AuthRepository() => AuthRepositoryImpl(DioClient());
}