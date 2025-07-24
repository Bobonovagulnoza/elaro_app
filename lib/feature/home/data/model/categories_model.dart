import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({@JsonKey(name: "data") List<Datum>? data}) =
      _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name_uz") String? nameUz,
    @JsonKey(name: "name_crl") String? nameCrl,
    @JsonKey(name: "name_ru") String? nameRu,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "background_img") String? backgroundImg,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
