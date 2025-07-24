import 'package:dartz/dartz.dart';
import 'package:elaro_app/core/failure/failure_model.dart';
import 'package:elaro_app/core/interceptor/interceptor.dart';
import 'package:elaro_app/feature/home/data/model/banner_model.dart';
import 'package:elaro_app/feature/home/domain/repository/banner_repository.dart';

class BannerRepositoryImpl implements BannerRepository {
  final DioClient client;

  BannerRepositoryImpl(this.client);

  @override
  Future<Either<FailureModel, BannerModel>> fetchdata() async {
    final response = await client.get(url: "/banners");

    if (response.isSuccess) {
      final data = BannerModel.fromJson(response.response);
      return Right(data);
    } else {
      return Left(FailureModel(response.response["message"]));
    }
  }
}
