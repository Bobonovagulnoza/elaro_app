import 'package:dartz/dartz.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/core/interceptor/interceptor.dart';
import 'package:elaro_app/feature/home/data/model/category_model.dart';
import 'package:elaro_app/feature/home/domain/repository/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final DioClient client;

  CategoryRepositoryImpl(this.client);

  @override
  Future<Either<FailureModel, CategoryModel>> categories() async {
    final response = await client.get(url: "/categories");
    if (response.isSuccess) {
      final data = CategoryModel.fromJson(response.response);
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

  @override
  Future<List<String>> getColors(int id) async {
    final request = await client.get(url: "/categories/$id/colors");
    if (request.isSuccess) {
      try {
        return List<String>.from(request.response["colors"]);
      } catch (e) {
        return [];
      }
    } else {
      return [];
    }
  }
}
