import 'package:dartz/dartz.dart';

import '../../../../prodik/failure.dart';
import '../../../data/models/login_model/login_model.dart';
import '../../../useacase/usecase_factory.dart';
import '../repositories/auth_repository.dart';

class OtpUseCase implements UseCaseFactory<Future<Either<Failure, LoginModel>>, OtpParams> {
  final AuthRepository impl;
  OtpUseCase(this.impl);
  @override
  Future<Either<Failure, LoginModel>> call(OtpParams params) async{
    return impl.otpVerify(params.phone, params.otp);
  }
}
class OtpParams {
  final String phone;
  final String otp;
  OtpParams(this.phone, this.otp);
}