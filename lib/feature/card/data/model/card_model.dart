import 'package:equatable/equatable.dart';

class CardModel extends Equatable {
  final String productId;
  final String titleUz;
  final String titleRu;
  final String titleCrl;
  final int productCount;
  final int qty;
  final int quantity;
  final String price;
  final String image;
  final int? discountedPrice; // Chegirmali narx
  final String? discount; // Chegirma miqdori yoki foizi
  final String? discountType; // Chegirma turi (foiz yoki fiks)
  final String? discountEnd;
  final String? discountStart;

  const CardModel({
    required this.titleUz,
    required this.titleRu,
    required this.titleCrl,
    required this.price,
    required this.productId,
    required this.image,
    required this.productCount,
    required this.qty,
    this.discountedPrice,
    this.discount,
    this.discountType,
    this.discountEnd,
    this.discountStart,
    required this.quantity,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      titleUz: json['title_uz'] as String,
      titleRu: json['title_ru'] as String,
      titleCrl: json['title_crl'] as String,
      productId: json['product_id'] as String,
      productCount: json['product_count'] as int,
      price: json['price'] as String,
      image: json['image'] as String,
      qty: json['qty'] as int,
      discountedPrice:
          json['discounted_price'] != null
              ? json['discounted_price'] as int
              : null,
      discount: json['discount'] as String?,
      discountType: json['discount_type'] as String?,
      discountStart: json['discount_start'] as String?,
      discountEnd: json['discount_end'] as String?,
      quantity: int.tryParse(json["quantity"].toString()) ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
    "title_uz": titleUz,
    "title_ru": titleRu,
    "title_crl": titleCrl,
    "product_id": productId,
    "product_count": productCount,
    "price": price,
    "image": image,
    "qty": qty,
    "discounted_price": discountedPrice,
    "discount": discount,
    "discount_type": discountType,
    "discount_start": discountStart,
    "discount_end": discountEnd,
    "quantity": quantity,
  };

  @override
  List<Object?> get props => [
    titleUz,
    titleRu,
    titleCrl,
    productId,
    productCount,
    price,
    image,
    qty,
    discountedPrice,
    discount,
    discountType,
    discountEnd,
    discountStart,
    quantity,
  ];
}
