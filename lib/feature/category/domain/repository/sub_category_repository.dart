import 'package:dartz/dartz.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/category/data/model/sub_categories_model.dart';
import 'package:elaro_app/feature/category/data/model/sub_category_model.dart';

abstract class SubCategoryRepository {
  Future<Either<FailureModel, SubCategoriesModel>> subCategories();
  Future<Either<FailureModel, SubCategoryModel>> subCategory(int id);
}
