import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_model.freezed.dart';
part 'products_model.g.dart';

@freezed
class ProductsModel with _$ProductsModel {
  const factory ProductsModel({@JsonKey(name: "data") List<Datum>? data}) =
      _ProductsModel;

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name_uz") String? nameUz,
    @JsonKey(name: "name_crl") String? nameCrl,
    @JsonKey(name: "name_ru") String? nameRu,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "quantity") int? quantity,
    @JsonKey(name: "discounted_price") int? discountedPrice,
    @JsonKey(name: "discount") String? discount,
    @JsonKey(name: "discount_type") String? discountType,
    @JsonKey(name: "discount_start") String? discountStart,
    @JsonKey(name: "discount_end") String? discountEnd,
    @JsonKey(name: "description_uz") String? descriptionUz,
    @JsonKey(name: "description_crl") String? descriptionCrl,
    @JsonKey(name: "description_ru") String? descriptionRu,
    @JsonKey(name: "images") List<Image>? images,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "image") String? image,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
