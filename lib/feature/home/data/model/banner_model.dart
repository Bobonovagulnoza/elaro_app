import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({@JsonKey(name: "data") List<Datum>? data}) =
      _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "image_uz_url") String? imageUzUrl,
    @JsonKey(name: "image_ru_url") String? imageRuUrl,
    @JsonKey(name: "image_crl_url") String? imageCrlUrl,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
