// import 'package:elaro/data/models/brand_model/brand_model.dart' as brand;

// import '../models/product_model/product_model.dart' as product;

import 'package:elaro_app/feature/home/data/model/brend_model.dart' as brand;
import 'package:elaro_app/feature/home/data/model/product_model.dart'
    as product;

extension BrandToProductMapper on brand.Product {
  product.ProductModel toProduct() {
    return product.ProductModel(
      data: product.Data(
        id: id,
        nameUz: nameUz,
        nameRu: nameRu,
        nameCrl: nameCrl,
        color: color,
        price: price,
        descriptionUz: descriptionUz,
        descriptionCrl: descriptionCrl,
        descriptionRu: descriptionRu,
        images:
            (images ?? []).map((e) => product.Image(image: e.image)).toList(),
        attributes: [],
      ),
    );
  }
}
