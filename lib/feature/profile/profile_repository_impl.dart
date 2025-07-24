import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:elaro_app/core/interceptor/interceptor.dart';
import 'package:elaro_app/feature/profile/profile_repository.dart';

import '../login/data/db/secure_storage.dart';
import '../prodik/failure.dart';
import 'models/profile_model.dart';

class ProfileRepositoryImpl extends ProfileRepository{
  final DioClient client;
  ProfileRepositoryImpl(this.client);
  @override
  Future<Either<Failure, ProfileModel>> getProfile() async{
    final request = await client.get(url: "/profile", );
    if(request.isSuccess){
      await SecureStorage().write(key: "user", value: json.encode(request.response));
      return Right(ProfileModel.fromJson(request.response));
    }
    return Left(Failure(message: request.response["message"]));
  }
  @override
  Future<void> profileEdit({
    required String? name,
    required String? surname,
    required String? address,
  }) async {
    final request = await client.post(
      url: "/edit-profile",
      body: {
        if (name != null) "name": name,
        if (surname != null) "surname": surname,
        if (address != null) "address": address,
      },
    );

  }

}