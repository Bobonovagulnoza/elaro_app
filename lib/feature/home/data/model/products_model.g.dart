// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsModelImpl _$$ProductsModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductsModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductsModelImplToJson(_$ProductsModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: (json['id'] as num?)?.toInt(),
      nameUz: json['name_uz'] as String?,
      nameCrl: json['name_crl'] as String?,
      nameRu: json['name_ru'] as String?,
      color: json['color'] as String?,
      price: json['price'] as String?,
      qty: (json['qty'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      discountedPrice: (json['discounted_price'] as num?)?.toInt(),
      discount: json['discount'] as String?,
      discountType: json['discount_type'] as String?,
      discountStart: json['discount_start'] as String?,
      discountEnd: json['discount_end'] as String?,
      descriptionUz: json['description_uz'] as String?,
      descriptionCrl: json['description_crl'] as String?,
      descriptionRu: json['description_ru'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_uz': instance.nameUz,
      'name_crl': instance.nameCrl,
      'name_ru': instance.nameRu,
      'color': instance.color,
      'price': instance.price,
      'qty': instance.qty,
      'quantity': instance.quantity,
      'discounted_price': instance.discountedPrice,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'discount_start': instance.discountStart,
      'discount_end': instance.discountEnd,
      'description_uz': instance.descriptionUz,
      'description_crl': instance.descriptionCrl,
      'description_ru': instance.descriptionRu,
      'images': instance.images,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
