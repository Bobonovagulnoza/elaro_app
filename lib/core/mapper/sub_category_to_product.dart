import 'package:elaro_app/feature/category/data/model/sub_category_model.dart'
    as sub;
import 'package:elaro_app/feature/home/data/model/product_model.dart' as pro;

extension SubcategoryProductToProductMapper on sub.Product {
  pro.ProductModel toProductModel() => pro.ProductModel(
    data: pro.Data(
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
      images: (images ?? []).map((e) => pro.Image(image: e.image)).toList(),
    ),
  );
}
