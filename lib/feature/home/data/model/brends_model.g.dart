// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brends_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandsModelImpl _$$BrandsModelImplFromJson(Map<String, dynamic> json) =>
    _$BrandsModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BrandsModelImplToJson(_$BrandsModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
