import 'package:elaro_app/core/interceptor/interceptor.dart';
import 'package:elaro_app/feature/card/data/model/card_model.dart';
import 'package:elaro_app/feature/home/data/model/products_model.dart';

class FavouriteRepositoryImpl extends DioClient {
  Future<void> addToCard(CardModel data) async {
    final request = await get(url: "/like/${data.productId}");
  }

  Future<List<CardModel>> getCards() async {
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
  }

  Future<void> deleteCard(String id) async {
    final request = await get(url: "/dislike/$id");
  }
}
