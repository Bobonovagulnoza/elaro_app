import 'package:elaro_app/feature/home/data/model/product_model.dart'
    as product;

import '../../feature/home/data/model/category_model.dart';

extension ProductPorductModel on Product {
  toProductModel() {
    return product.ProductModel(
      data: product.Data(
        id: id,
        nameUz: nameUz,
        nameCrl: nameCrl,
        nameRu: nameRu,
        color: color,
        price: price,
        qty: qty,
        descriptionUz: descriptionUz,
        descriptionCrl: descriptionCrl,
        descriptionRu: descriptionRu,
        discountEnd: discountEnd,
        discountStart: discountStart,
        discountedPrice: discountedPrice,
        discount: discount,
        discountType: discountType,
        images:
            (images ?? []).map((e) => product.Image(image: e.image)).toList(),
        attributes: [],
      ),
    );
  }
}
