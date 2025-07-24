import 'package:dartz/dartz.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/core/interceptor/interceptor.dart';
import 'package:elaro_app/feature/home/data/model/product_model.dart';
import 'package:elaro_app/feature/home/data/model/products_model.dart';
import 'package:elaro_app/feature/home/domain/repository/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final DioClient client;

  ProductsRepositoryImpl(this.client);

  @override
  Future<Either<FailureModel, ProductModel>> product(int id) async {
    final response = await client.get(url: "/products/$id");
    if (response.isSuccess) {
      final data = ProductModel.fromJson(response.response);
      return Right(data);
    } else {
      return Left(FailureModel(response.response["message"]));
    }
  }

  @override
  Future<Either<FailureModel, ProductsModel>> products({
    required int pageIndex,
  }) async {
    final response = await client.get(
      url: "/products?pageIndex=$pageIndex&pageSize=10",
    );
    if (response.isSuccess) {
      final data = ProductsModel.fromJson(response.response);
      return Right(data);
    } else {
      return Left(FailureModel(response.response["message"]));
    }
  }

  @override
  Future<Either<FailureModel, ProductsModel>> productsDiscount({
    required int pageIndex,
  }) async {
    final response = await client.get(
      url: "/products-discount?pageIndex=$pageIndex&pageSize=10",
    );
    if (response.isSuccess) {
      final data = ProductsModel.fromJson(response.response);
      return Right(data);
    } else {
      return Left(FailureModel(response.response["message"]));
    }
  }

  @override
  Future<Either<FailureModel, ProductsModel>> productsHit({
    required int pageIndex,
  }) async {
    final response = await client.get(
      url: "/products-hit?pageIndex=$pageIndex&pageSize=10",
    );
    if (response.isSuccess) {
      final data = ProductsModel.fromJson(response.response);
      return Right(data);
    } else {
      return Left(FailureModel(response.response["message"]));
    }
  }

  @override
  Future<Either<FailureModel, ProductsModel>> productsNew({
    required int pageIndex,
  }) async {
    final response = await client.get(
      url: "/products-new?pageIndex=$pageIndex&pageSize=10",
    );
    if (response.isSuccess) {
      final data = ProductsModel.fromJson(response.response);
      return Right(data);
    } else {
      return Left(FailureModel(response.response["message"]));
    }
  }
}
