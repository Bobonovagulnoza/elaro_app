import 'package:dartz/dartz.dart';
import '../prodik/failure.dart';
import 'models/profile_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileModel>> getProfile();
  Future<void> profileEdit({required String? name, required String? surname, required String? address});
}