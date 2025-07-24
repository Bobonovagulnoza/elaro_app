import 'package:dartz/dartz.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/core/interceptor/interceptor.dart';
import 'package:elaro_app/feature/category/data/model/sub_categories_model.dart';
import 'package:elaro_app/feature/category/data/model/sub_category_model.dart';
import 'package:elaro_app/feature/category/domain/repository/sub_category_repository.dart';

class SubCategoryRepositoryImpl extends SubCategoryRepository {
  final DioClient client;

  SubCategoryRepositoryImpl(this.client);
  @override
  Future<Either<FailureModel, SubCategoriesModel>> subCategories() async {
    final response = await client.get(url: "/sub-categories");

    if (response.isSuccess) {
      final data = SubCategoriesModel.fromJson(response.response);
      return Right(data);
    } else {
      return Left(FailureModel(response.response["message"]));
    }
  }

  @override
  Future<Either<FailureModel, SubCategoryModel>> subCategory(int id) async {
    final response = await client.get(url: "/sub-categories/$id");

    if (response.isSuccess) {
      final data = SubCategoryModel.fromJson(response.response);
      return Right(data);
    } else {
      return Left(FailureModel(response.response["message"]));
    }
  }
}
