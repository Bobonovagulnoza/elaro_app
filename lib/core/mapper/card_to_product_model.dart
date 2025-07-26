import 'package:elaro_app/feature/card/data/model/card_model.dart' as card;
import 'package:elaro_app/feature/home/data/model/product_model.dart' as pro;

import '../../feature/home/data/model/products_model.dart';

extension CardToProduct on card.CardModel {
  pro.Data toProductModel() {
    return pro.Data(
      id: int.tryParse(productId),
      nameUz: titleUz,
      nameRu: titleRu,
      nameCrl: titleCrl,
      price: price,
      qty: qty,
      discountType: discountType,
      discount: discount,
      discountedPrice: discountedPrice,
      discountStart: discountStart,
      discountEnd: discountEnd,
      images: [pro.Image(id: 0, image: image)],
      attributes: [],
    );
  }
}

extension ProductToCard on Datum {
  toCard({required int productCount}) {
    return card.CardModel(
      titleUz: nameUz ?? "",
      titleRu: nameRu ?? "",
      titleCrl: nameCrl ?? "",
      price: price ?? "",
      productId: (id ?? -1).toString(),
      image: images?.firstOrNull?.image ?? "",
      productCount: productCount,
      qty: qty ?? 0,
      discountEnd: discountEnd,
      discountType: discountType,
      discountedPrice: discountedPrice,
      discount: discount,
      discountStart: discountStart,
      quantity: quantity ?? 0,
    );
  }
}
