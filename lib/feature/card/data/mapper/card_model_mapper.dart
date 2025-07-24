import 'package:elaro_app/feature/card/data/model/card_model.dart';
import 'package:elaro_app/feature/home/data/model/product_model.dart';

extension CardModelMapper on CardModel {
  Data toProductModel() {
    return Data(
      id: int.tryParse(productId), // productId String, uni int ga aylantiryapmiz
      nameUz: titleUz,
      nameRu: titleRu,
      nameCrl: titleCrl,
      price: price,
      qty: qty,
      quantity: quantity,
      discountedPrice: discountedPrice,
      discount: discount,
      discountType: discountType,
      discountStart: discountStart,
      discountEnd: discountEnd,
      descriptionUz: null, // CardModelda yo'q, shuning uchun null
      descriptionCrl: null,
      descriptionRu: null,
      color: null,
      categoryId: null,
      attributes: [], // CardModelda yo‘q
      images: [
        Image(id: 0, image: image),
      ],
    );
  }
}
