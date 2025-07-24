// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      data: json['data'] == null
          ? null
          : ProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      id: (json['id'] as num?)?.toInt(),
      color: json['color'] as String?,
      price: json['price'] as String?,
      qty: (json['qty'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      discountedPrice: (json['discounted_price'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      discount: json['discount'] as String?,
      discountType: json['discount_type'] as String?,
      discountStart: json['discount_start'] as String?,
      discountEnd: json['discount_end'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => Attribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'color': instance.color,
      'price': instance.price,
      'qty': instance.qty,
      'quantity': instance.quantity,
      'discounted_price': instance.discountedPrice,
      'category_id': instance.categoryId,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'discount_start': instance.discountStart,
      'discount_end': instance.discountEnd,
      'images': instance.images,
      'attributes': instance.attributes,
    };

_$AttributeImpl _$$AttributeImplFromJson(Map<String, dynamic> json) =>
    _$AttributeImpl(
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AttributeImplToJson(_$AttributeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ProductImageImpl _$$ProductImageImplFromJson(Map<String, dynamic> json) =>
    _$ProductImageImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ProductImageImplToJson(_$ProductImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
