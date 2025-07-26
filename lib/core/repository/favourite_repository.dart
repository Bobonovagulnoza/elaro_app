import 'package:elaro_app/core/interceptor/interceptor.dart';
import 'package:elaro_app/core/utils/utils.dart';
import 'package:elaro_app/feature/card/data/model/card_model.dart';
import 'package:elaro_app/feature/home/data/model/products_model.dart';

class FavouriteRepositoryImpl extends DioClient {
  Future<void> addToCard(CardModel data) async {
    try {
      final isLoggedIn = await Utils().isLogin();
      if (!isLoggedIn) {
        throw Exception("User is not logged in");
      }

      final request = await get(url: "/like/${data.productId}");

      if (!request.isSuccess) {
        throw Exception("Failed to add product to favourites");
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<CardModel>> getCards() async {
    try {
      final isLoggedIn = await Utils().isLogin();
      if (!isLoggedIn) {
        return [];
      }

      final request = await get(url: "/favorites/");

      if (request.isSuccess) {
        final data = List<Datum>.from(
          request.response["data"].map((e) => Datum.fromJson(e)),
        );
        final list =
        data
            .map(
              (e) => CardModel(
            titleUz: e.nameUz ?? "",
            titleRu: e.nameRu ?? "",
            titleCrl: e.nameCrl ?? "",
            price: e.price ?? "",
            productId: "${e.id ?? "0"}",
            image: e.images?.first.image ?? "",
            productCount: e.qty ?? 0,
            qty: e.qty ?? 0,
            quantity: e.quantity ?? 1,
          ),
        )
            .toList();
        return list;
      }
      return [];
    } catch (e) {
      return [];
    }
  }

  Future<void> deleteCard(String id) async {
    try {
      final isLoggedIn = await Utils().isLogin();
      if (!isLoggedIn) {
        throw Exception("User is not logged in");
      }

      final request = await get(url: "/dislike/$id");

      if (!request.isSuccess) {
        throw Exception("Failed to remove product from favourites");
      }
    } catch (e) {
      rethrow;
    }
  }
}
