import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'sub_categories_model.freezed.dart';
part 'sub_categories_model.g.dart';

@freezed
class SubCategoriesModel with _$SubCategoriesModel {
  const factory SubCategoriesModel({@JsonKey(name: "data") List<Datum>? data}) =
      _SubCategoriesModel;

  factory SubCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoriesModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name_uz") String? nameUz,
    @JsonKey(name: "name_crl") String? nameCrl,
    @JsonKey(name: "name_ru") String? nameRu,
    @JsonKey(name: "image") String? image,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
