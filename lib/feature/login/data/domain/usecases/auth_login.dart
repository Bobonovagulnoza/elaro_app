import 'package:dartz/dartz.dart';
import '../../../../prodik/failure.dart';
import '../../../useacase/usecase_factory.dart';
import '../../models/login_model/send_otp_model.dart';
import '../../repositories/auth_repository.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase implements UseCaseFactory<Future<Either<Failure, SendOtpModel>>, LoginParams> {
  final AuthRepository impl;
  LoginUseCase(this.impl);
  @override
  Future<Either<Failure, SendOtpModel>> call(LoginParams params) async{
    return impl.login(params.phone, params.password);
  }
}

class LoginParams {
  final String phone;
  final String password;
  const LoginParams(this.phone, this.password);
}