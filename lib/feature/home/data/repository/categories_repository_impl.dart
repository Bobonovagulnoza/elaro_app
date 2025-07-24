import 'package:dartz/dartz.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/core/interceptor/interceptor.dart';
import 'package:elaro_app/feature/home/data/model/categories_model.dart';
import 'package:elaro_app/feature/home/data/model/category_model.dart';
import 'package:elaro_app/feature/home/domain/repository/categories_repo.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final DioClient client;
  CategoriesRepositoryImpl(this.client);

  @override
  Future<Either<FailureModel, CategoriesModel>> categories() async {
    final response = await client.get(url: "/categories");

    if (response.isSuccess) {
      final data = CategoriesModel.fromJson(response.response);
      return Right(data);
    } else {
      return Left(FailureModel(response.response["message"]));
    }
  }

  @override
  Future<Either<FailureModel, CategoryModel>> category(int id) async {
    final response = await client.get(url: "/categories/$id");
    if (response.isSuccess) {
      final data = CategoryModel.fromJson(response.response);
      return Right(data);
    } else {
      return Left(FailureModel(response.response["message"]));
    }
  }
}
