import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'brends_model.freezed.dart';
part 'brends_model.g.dart';

@freezed
class BrandsModel with _$BrandsModel {
  const factory BrandsModel({@JsonKey(name: "data") List<Datum>? data}) =
      _BrandsModel;

  factory BrandsModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
