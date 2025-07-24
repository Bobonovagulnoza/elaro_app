import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/categories_model.dart';
import 'package:elaro_app/feature/home/data/model/category_model.dart';
import 'package:dartz/dartz.dart';

abstract class CategoriesRepository {
  Future<Either<FailureModel, CategoriesModel>> categories();
  Future<Either<FailureModel, CategoryModel>> category(int id);
}
