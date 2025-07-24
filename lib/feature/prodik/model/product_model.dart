import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(name: "data") ProductData? data,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "quantity") int? quantity,
    @JsonKey(name: "discounted_price") int? discountedPrice,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "discount") String? discount,
    @JsonKey(name: "discount_type") String? discountType,
    @JsonKey(name: "discount_start") String? discountStart,
    @JsonKey(name: "discount_end") String? discountEnd,
    @JsonKey(name: "images") List<ProductImage>? images,
    @JsonKey(name: "attributes") List<Attribute>? attributes,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

@freezed
class Attribute with _$Attribute {
  const factory Attribute({
    @JsonKey(name: "id") int? id,
  }) = _Attribute;

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);
}

@freezed
class ProductImage with _$ProductImage {
  const factory ProductImage({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "image") String? image,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
}
