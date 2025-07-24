import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({@JsonKey(name: "data") Data? data}) =
      _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name_uz") String? nameUz,
    @JsonKey(name: "name_crl") String? nameCrl,
    @JsonKey(name: "name_ru") String? nameRu,
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
    @JsonKey(name: "description_uz") String? descriptionUz,
    @JsonKey(name: "description_crl") String? descriptionCrl,
    @JsonKey(name: "description_ru") String? descriptionRu,
    @JsonKey(name: "images") List<Image>? images,
    @JsonKey(name: "attributes") List<Attribute>? attributes,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Attribute with _$Attribute {
  const factory Attribute({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name_uz") String? nameUz,
    @JsonKey(name: "name_crl") String? nameCrl,
    @JsonKey(name: "name_ru") String? nameRu,
    @JsonKey(name: "value_uz") String? valueUz,
    @JsonKey(name: "value_crl") String? valueCrl,
    @JsonKey(name: "value_ru") String? valueRu,
  }) = _Attribute;

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "image") String? image,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
