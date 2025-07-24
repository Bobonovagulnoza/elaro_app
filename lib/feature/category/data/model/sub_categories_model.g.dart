// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCategoriesModelImpl _$$SubCategoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubCategoriesModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubCategoriesModelImplToJson(
        _$SubCategoriesModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: (json['id'] as num?)?.toInt(),
      nameUz: json['name_uz'] as String?,
      nameCrl: json['name_crl'] as String?,
      nameRu: json['name_ru'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_uz': instance.nameUz,
      'name_crl': instance.nameCrl,
      'name_ru': instance.nameRu,
      'image': instance.image,
    };
