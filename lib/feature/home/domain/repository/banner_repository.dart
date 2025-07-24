import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/banner_model.dart';
import 'package:dartz/dartz.dart';

abstract class BannerRepository {
  Future<Either<FailureModel, BannerModel>> fetchdata();
}
