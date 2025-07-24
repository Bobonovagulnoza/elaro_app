import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/category_model.dart';
import 'package:dartz/dartz.dart';

abstract class CategoryRepository {
  Future<Either<FailureModel, CategoryModel>> categories();
  Future<Either<FailureModel, CategoryModel>> category(int id);
  Future<List<String>> getColors(int id);
}
