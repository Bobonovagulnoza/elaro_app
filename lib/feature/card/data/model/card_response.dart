import 'package:elaro_app/feature/card/data/model/card_model.dart';

class CartResponseModel {
  final List<CardModel> items;
  final double total;
  final int totalItems;

  CartResponseModel({
    required this.items,
    required this.total,
    required this.totalItems,
  });

  factory CartResponseModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> itemsJson = json['data'] ?? json['items'] ?? [];
    final items = itemsJson.map((item) => CardModel.fromJson(item)).toList();

    return CartResponseModel(
      items: items,
      total: double.tryParse(json['total']?.toString() ?? '0') ?? 0.0,
      totalItems: json['total_items'] ?? items.length,
    );
  }

  factory CartResponseModel.empty() {
    return CartResponseModel(items: [], total: 0.0, totalItems: 0);
  }
}
