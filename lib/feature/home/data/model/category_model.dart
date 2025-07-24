import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

CategoryModel categoryModelFromJson(String str) => CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @JsonKey(name: "data")
    Data? data,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
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
    @JsonKey(name: "image")
    String? image,
    @JsonKey(name: "sub_categories")
    List<SubCategory>? subCategories,
    @JsonKey(name: "products")
    List<Product>? products,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
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
    @JsonKey(name: "discounted_price")
    int? discountedPrice,
    @JsonKey(name: "discount")
    String? discount,
    @JsonKey(name: "discount_type")
    dynamic discountType,
    @JsonKey(name: "discount_start")
    dynamic discountStart,
    @JsonKey(name: "discount_end")
    dynamic discountEnd,
    @JsonKey(name: "description_uz")
    String? descriptionUz,
    @JsonKey(name: "description_crl")
    String? descriptionCrl,
    @JsonKey(name: "description_ru")
    String? descriptionRu,
    @JsonKey(name: "images")
    List<Image>? images,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "image")
    String? image,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  const factory SubCategory({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name_uz")
    String? nameUz,
    @JsonKey(name: "name_crl")
    String? nameCrl,
    @JsonKey(name: "name_ru")
    String? nameRu,
    @JsonKey(name: "image")
    String? image,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);
}
