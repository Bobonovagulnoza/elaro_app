import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/feature/home/data/model/product_model.dart';
import 'package:elaro_app/feature/home/data/model/products_model.dart';
import 'package:dartz/dartz.dart';

abstract class ProductsRepository {
  Future<Either<FailureModel, ProductsModel>> products({
    required int pageIndex,
  });
  Future<Either<FailureModel, ProductModel>> product(int id);
  Future<Either<FailureModel, ProductsModel>> productsDiscount({
    required int pageIndex,
  });
  Future<Either<FailureModel, ProductsModel>> productsHit({
    required int pageIndex,
  });
  Future<Either<FailureModel, ProductsModel>> productsNew({
    required int pageIndex,
  });
}
