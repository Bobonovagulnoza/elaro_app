import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_entity.freezed.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    @JsonKey(name: "data")
    Data? data,
  }) = _ProductEntity;
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name_uz")
    String? nameUz,
    @JsonKey(name: "name_crl")
    String? nameCrl,
    @JsonKey(name: "name_ru")
    String? nameRu,
    @JsonKey(name: "color")
    String? color,
    @JsonKey(name: "price")
    String? price,
    @JsonKey(name: "qty")
    int? qty,
    @JsonKey(name: "description_uz")
    String? descriptionUz,
    @JsonKey(name: "description_crl")
    String? descriptionCrl,
    @JsonKey(name: "description_ru")
    String? descriptionRu,
    @JsonKey(name: "images")
    List<Image>? images,
    @JsonKey(name: "attributes")
    List<Attribute>? attributes,
  }) = _Data;

}

@freezed
class Attribute with _$Attribute {
  const factory Attribute({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name_uz")
    String? nameUz,
    @JsonKey(name: "name_crl")
    String? nameCrl,
    @JsonKey(name: "name_ru")
    String? nameRu,
    @JsonKey(name: "value_uz")
    String? valueUz,
    @JsonKey(name: "value_crl")
    String? valueCrl,
    @JsonKey(name: "value_ru")
    String? valueRu,
  }) = _Attribute;
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "image")
    String? image,
  }) = _Image;
}
