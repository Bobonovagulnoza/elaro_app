// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: (json['id'] as num?)?.toInt(),
      nameUz: json['name_uz'] as String?,
      nameCrl: json['name_crl'] as String?,
      nameRu: json['name_ru'] as String?,
      image: json['image'] as String?,
      subCategories: (json['sub_categories'] as List<dynamic>?)
          ?.map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_uz': instance.nameUz,
      'name_crl': instance.nameCrl,
      'name_ru': instance.nameRu,
      'image': instance.image,
      'sub_categories': instance.subCategories,
      'products': instance.products,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      nameUz: json['name_uz'] as String?,
      nameCrl: json['name_crl'] as String?,
      nameRu: json['name_ru'] as String?,
      color: json['color'] as String?,
      price: json['price'] as String?,
      qty: (json['qty'] as num?)?.toInt(),
      discountedPrice: (json['discounted_price'] as num?)?.toInt(),
      discount: json['discount'] as String?,
      discountType: json['discount_type'],
      discountStart: json['discount_start'],
      discountEnd: json['discount_end'],
      descriptionUz: json['description_uz'] as String?,
      descriptionCrl: json['description_crl'] as String?,
      descriptionRu: json['description_ru'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_uz': instance.nameUz,
      'name_crl': instance.nameCrl,
      'name_ru': instance.nameRu,
      'color': instance.color,
      'price': instance.price,
      'qty': instance.qty,
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

_$SubCategoryImpl _$$SubCategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      nameUz: json['name_uz'] as String?,
      nameCrl: json['name_crl'] as String?,
      nameRu: json['name_ru'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$SubCategoryImplToJson(_$SubCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_uz': instance.nameUz,
      'name_crl': instance.nameCrl,
      'name_ru': instance.nameRu,
      'image': instance.image,
    };
