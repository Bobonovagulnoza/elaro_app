import 'package:elaro_app/feature/card/data/model/card_model.dart';

abstract class CardRepositoyr {
  Future<List<CardModel>> getcartitems();
  Future<bool> addProduct(CardModel card);
  Future<bool> removeFromCard(String id);
  Future<bool> updateQuantity(String id, int quantity);
  Future<bool> decrement(String id, int quantity);
}
