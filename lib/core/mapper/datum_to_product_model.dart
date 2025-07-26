import 'package:elaro_app/feature/home/data/model/product_model.dart' as pModel;
import 'package:elaro_app/feature/home/data/model/product_model.dart';
import '../../feature/home/data/model/products_model.dart';

extension DatumToProductModel on Datum {
  ProductModel toProductModel() => ProductModel(
    data: Data(
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
      discount: discount,
      discountedPrice: discountedPrice,
      discountEnd: discountEnd,
      discountStart: discountStart,
      discountType: discountType,
      images: (images ?? []).map((e) => pModel.Image(image: e.image)).toList(),
      attributes: [],
    ),
  );
}
