import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/brend_model.dart';
import 'package:elaro_app/feature/home/data/model/brends_model.dart';
import 'package:dartz/dartz.dart';

abstract class BrendsRepository {
  Future<Either<FailureModel, BrandsModel>> brends();
  Future<Either<FailureModel, BrandModel>> brend(int id);
}
