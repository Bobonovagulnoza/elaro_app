import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../../core/api/api.dart';
import '../../../../core/interceptor/interceptor.dart';
import '../../../prodik/failure.dart';
import '../db/secure_storage.dart';
import '../domain/repositories/auth_repository.dart';
import '../models/login_model/login_model.dart';
import '../models/login_model/send_otp_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final DioClient client;

  AuthRepositoryImpl(this.client);

  @override
  Future<Either<Failure, SendOtpModel>> login(String phone, String password) async {
    try {
      String signature = await SmsAutoFill().getAppSignature;
      final response = await client.post(
        url: "/otp/login",
        body: {
          "phone": phone,
          "password": password,
          "app_signature": Platform.isAndroid ? signature : "https://elaro.uz",
        },
      );

      if (response.isSuccess) {
        final data = SendOtpModel(message: "send_otp_code".tr());
        return Right(data);
      } else {
        return Left(Failure(message: response.response["message"] ?? "Noma'lum xatolik"));
      }
    } on DioException catch (e) {
      return Left(Failure(message: e.response?.data["message"].toString() ?? "Tarmoq xatosi"));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SendOtpModel>> register(
      String phone, String name, String password, String surname) async {
    try {
      String signature = await SmsAutoFill().getAppSignature;
      final response = await client.post(
        url: "/register",
        body: {
          "phone": phone,
          "name": name,
          "surname": surname,
          "password": password,
          "app_signature": Platform.isAndroid ? signature : "https://elaro.uz",
        },
      );

      if (response.isSuccess && response.response["error"] == false) {
        final data = SendOtpModel(message: "send_otp_code".tr());
        return Right(data);
      } else {
        return Left(Failure(message: response.response["message"] ?? "Noto‘g‘ri ma’lumot"));
      }
    } on DioException catch (e) {
      return Left(Failure(message: e.response?.data["message"].toString() ?? "Tarmoq xatosi"));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, LoginModel>> otpVerify(String phone, String otp) async {
    try {
      final response = await client.post(
        url: "/otp/confirm",
        body: {
          "phone": phone,
          "otp": otp,
        },
      );

      if (response.isSuccess) {
        await SecureStorage().write(key: "token", value: response.response["access_token"]);
        final data = LoginModel.fromJson(response.response);
        final token = data.accessToken ?? '';
        final SecureStorage storage = SecureStorage();
        await storage.saveToken(token);
        final savedToken = await storage.getToken();
        print('Saqlangan token: $savedToken');
        return Right(data);
      } else {
        return Left(Failure(message: response.response["message"].toString()));
      }
    } on DioException catch (e) {
      return Left(Failure(message: e.response?.data["message"].toString() ?? "Tarmoq xatosi"));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
