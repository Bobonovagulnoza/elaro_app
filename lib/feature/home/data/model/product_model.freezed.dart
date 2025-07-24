// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call({@JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProductModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl({@JsonKey(name: "data") this.data});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'ProductModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel({@JsonKey(name: "data") final Data? data}) =
      _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  Data? get data;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name_uz")
  String? get nameUz => throw _privateConstructorUsedError;
  @JsonKey(name: "name_crl")
  String? get nameCrl => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ru")
  String? get nameRu => throw _privateConstructorUsedError;
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "discounted_price")
  int? get discountedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  String? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_start")
  String? get discountStart => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_end")
  String? get discountEnd => throw _privateConstructorUsedError;
  @JsonKey(name: "description_uz")
  String? get descriptionUz => throw _privateConstructorUsedError;
  @JsonKey(name: "description_crl")
  String? get descriptionCrl => throw _privateConstructorUsedError;
  @JsonKey(name: "description_ru")
  String? get descriptionRu => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<Image>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "attributes")
  List<Attribute>? get attributes => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name_uz") String? nameUz,
      @JsonKey(name: "name_crl") String? nameCrl,
      @JsonKey(name: "name_ru") String? nameRu,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "discounted_price") int? discountedPrice,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "discount") String? discount,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "discount_start") String? discountStart,
      @JsonKey(name: "discount_end") String? discountEnd,
      @JsonKey(name: "description_uz") String? descriptionUz,
      @JsonKey(name: "description_crl") String? descriptionCrl,
      @JsonKey(name: "description_ru") String? descriptionRu,
      @JsonKey(name: "images") List<Image>? images,
      @JsonKey(name: "attributes") List<Attribute>? attributes});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameUz = freezed,
    Object? nameCrl = freezed,
    Object? nameRu = freezed,
    Object? color = freezed,
    Object? price = freezed,
    Object? qty = freezed,
    Object? quantity = freezed,
    Object? discountedPrice = freezed,
    Object? categoryId = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
    Object? discountStart = freezed,
    Object? discountEnd = freezed,
    Object? descriptionUz = freezed,
    Object? descriptionCrl = freezed,
    Object? descriptionRu = freezed,
    Object? images = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameUz: freezed == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCrl: freezed == nameCrl
          ? _value.nameCrl
          : nameCrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRu: freezed == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discountStart: freezed == discountStart
          ? _value.discountStart
          : discountStart // ignore: cast_nullable_to_non_nullable
              as String?,
      discountEnd: freezed == discountEnd
          ? _value.discountEnd
          : discountEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionUz: freezed == descriptionUz
          ? _value.descriptionUz
          : descriptionUz // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionCrl: freezed == descriptionCrl
          ? _value.descriptionCrl
          : descriptionCrl // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionRu: freezed == descriptionRu
          ? _value.descriptionRu
          : descriptionRu // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Attribute>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name_uz") String? nameUz,
      @JsonKey(name: "name_crl") String? nameCrl,
      @JsonKey(name: "name_ru") String? nameRu,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "discounted_price") int? discountedPrice,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "discount") String? discount,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "discount_start") String? discountStart,
      @JsonKey(name: "discount_end") String? discountEnd,
      @JsonKey(name: "description_uz") String? descriptionUz,
      @JsonKey(name: "description_crl") String? descriptionCrl,
      @JsonKey(name: "description_ru") String? descriptionRu,
      @JsonKey(name: "images") List<Image>? images,
      @JsonKey(name: "attributes") List<Attribute>? attributes});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameUz = freezed,
    Object? nameCrl = freezed,
    Object? nameRu = freezed,
    Object? color = freezed,
    Object? price = freezed,
    Object? qty = freezed,
    Object? quantity = freezed,
    Object? discountedPrice = freezed,
    Object? categoryId = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
    Object? discountStart = freezed,
    Object? discountEnd = freezed,
    Object? descriptionUz = freezed,
    Object? descriptionCrl = freezed,
    Object? descriptionRu = freezed,
    Object? images = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameUz: freezed == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCrl: freezed == nameCrl
          ? _value.nameCrl
          : nameCrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRu: freezed == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discountStart: freezed == discountStart
          ? _value.discountStart
          : discountStart // ignore: cast_nullable_to_non_nullable
              as String?,
      discountEnd: freezed == discountEnd
          ? _value.discountEnd
          : discountEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionUz: freezed == descriptionUz
          ? _value.descriptionUz
          : descriptionUz // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionCrl: freezed == descriptionCrl
          ? _value.descriptionCrl
          : descriptionCrl // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionRu: freezed == descriptionRu
          ? _value.descriptionRu
          : descriptionRu // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Attribute>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name_uz") this.nameUz,
      @JsonKey(name: "name_crl") this.nameCrl,
      @JsonKey(name: "name_ru") this.nameRu,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "qty") this.qty,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "discounted_price") this.discountedPrice,
      @JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "discount_type") this.discountType,
      @JsonKey(name: "discount_start") this.discountStart,
      @JsonKey(name: "discount_end") this.discountEnd,
      @JsonKey(name: "description_uz") this.descriptionUz,
      @JsonKey(name: "description_crl") this.descriptionCrl,
      @JsonKey(name: "description_ru") this.descriptionRu,
      @JsonKey(name: "images") final List<Image>? images,
      @JsonKey(name: "attributes") final List<Attribute>? attributes})
      : _images = images,
        _attributes = attributes;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name_uz")
  final String? nameUz;
  @override
  @JsonKey(name: "name_crl")
  final String? nameCrl;
  @override
  @JsonKey(name: "name_ru")
  final String? nameRu;
  @override
  @JsonKey(name: "color")
  final String? color;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "qty")
  final int? qty;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "discounted_price")
  final int? discountedPrice;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "discount")
  final String? discount;
  @override
  @JsonKey(name: "discount_type")
  final String? discountType;
  @override
  @JsonKey(name: "discount_start")
  final String? discountStart;
  @override
  @JsonKey(name: "discount_end")
  final String? discountEnd;
  @override
  @JsonKey(name: "description_uz")
  final String? descriptionUz;
  @override
  @JsonKey(name: "description_crl")
  final String? descriptionCrl;
  @override
  @JsonKey(name: "description_ru")
  final String? descriptionRu;
  final List<Image>? _images;
  @override
  @JsonKey(name: "images")
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Attribute>? _attributes;
  @override
  @JsonKey(name: "attributes")
  List<Attribute>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(id: $id, nameUz: $nameUz, nameCrl: $nameCrl, nameRu: $nameRu, color: $color, price: $price, qty: $qty, quantity: $quantity, discountedPrice: $discountedPrice, categoryId: $categoryId, discount: $discount, discountType: $discountType, discountStart: $discountStart, discountEnd: $discountEnd, descriptionUz: $descriptionUz, descriptionCrl: $descriptionCrl, descriptionRu: $descriptionRu, images: $images, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            (identical(other.nameCrl, nameCrl) || other.nameCrl == nameCrl) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discountStart, discountStart) ||
                other.discountStart == discountStart) &&
            (identical(other.discountEnd, discountEnd) ||
                other.discountEnd == discountEnd) &&
            (identical(other.descriptionUz, descriptionUz) ||
                other.descriptionUz == descriptionUz) &&
            (identical(other.descriptionCrl, descriptionCrl) ||
                other.descriptionCrl == descriptionCrl) &&
            (identical(other.descriptionRu, descriptionRu) ||
                other.descriptionRu == descriptionRu) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        nameUz,
        nameCrl,
        nameRu,
        color,
        price,
        qty,
        quantity,
        discountedPrice,
        categoryId,
        discount,
        discountType,
        discountStart,
        discountEnd,
        descriptionUz,
        descriptionCrl,
        descriptionRu,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_attributes)
      ]);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name_uz") final String? nameUz,
          @JsonKey(name: "name_crl") final String? nameCrl,
          @JsonKey(name: "name_ru") final String? nameRu,
          @JsonKey(name: "color") final String? color,
          @JsonKey(name: "price") final String? price,
          @JsonKey(name: "qty") final int? qty,
          @JsonKey(name: "quantity") final int? quantity,
          @JsonKey(name: "discounted_price") final int? discountedPrice,
          @JsonKey(name: "category_id") final int? categoryId,
          @JsonKey(name: "discount") final String? discount,
          @JsonKey(name: "discount_type") final String? discountType,
          @JsonKey(name: "discount_start") final String? discountStart,
          @JsonKey(name: "discount_end") final String? discountEnd,
          @JsonKey(name: "description_uz") final String? descriptionUz,
          @JsonKey(name: "description_crl") final String? descriptionCrl,
          @JsonKey(name: "description_ru") final String? descriptionRu,
          @JsonKey(name: "images") final List<Image>? images,
          @JsonKey(name: "attributes") final List<Attribute>? attributes}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name_uz")
  String? get nameUz;
  @override
  @JsonKey(name: "name_crl")
  String? get nameCrl;
  @override
  @JsonKey(name: "name_ru")
  String? get nameRu;
  @override
  @JsonKey(name: "color")
  String? get color;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "qty")
  int? get qty;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "discounted_price")
  int? get discountedPrice;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "discount")
  String? get discount;
  @override
  @JsonKey(name: "discount_type")
  String? get discountType;
  @override
  @JsonKey(name: "discount_start")
  String? get discountStart;
  @override
  @JsonKey(name: "discount_end")
  String? get discountEnd;
  @override
  @JsonKey(name: "description_uz")
  String? get descriptionUz;
  @override
  @JsonKey(name: "description_crl")
  String? get descriptionCrl;
  @override
  @JsonKey(name: "description_ru")
  String? get descriptionRu;
  @override
  @JsonKey(name: "images")
  List<Image>? get images;
  @override
  @JsonKey(name: "attributes")
  List<Attribute>? get attributes;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return _Attribute.fromJson(json);
}

/// @nodoc
mixin _$Attribute {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name_uz")
  String? get nameUz => throw _privateConstructorUsedError;
  @JsonKey(name: "name_crl")
  String? get nameCrl => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ru")
  String? get nameRu => throw _privateConstructorUsedError;
  @JsonKey(name: "value_uz")
  String? get valueUz => throw _privateConstructorUsedError;
  @JsonKey(name: "value_crl")
  String? get valueCrl => throw _privateConstructorUsedError;
  @JsonKey(name: "value_ru")
  String? get valueRu => throw _privateConstructorUsedError;

  /// Serializes this Attribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeCopyWith<Attribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeCopyWith<$Res> {
  factory $AttributeCopyWith(Attribute value, $Res Function(Attribute) then) =
      _$AttributeCopyWithImpl<$Res, Attribute>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name_uz") String? nameUz,
      @JsonKey(name: "name_crl") String? nameCrl,
      @JsonKey(name: "name_ru") String? nameRu,
      @JsonKey(name: "value_uz") String? valueUz,
      @JsonKey(name: "value_crl") String? valueCrl,
      @JsonKey(name: "value_ru") String? valueRu});
}

/// @nodoc
class _$AttributeCopyWithImpl<$Res, $Val extends Attribute>
    implements $AttributeCopyWith<$Res> {
  _$AttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameUz = freezed,
    Object? nameCrl = freezed,
    Object? nameRu = freezed,
    Object? valueUz = freezed,
    Object? valueCrl = freezed,
    Object? valueRu = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameUz: freezed == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCrl: freezed == nameCrl
          ? _value.nameCrl
          : nameCrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRu: freezed == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String?,
      valueUz: freezed == valueUz
          ? _value.valueUz
          : valueUz // ignore: cast_nullable_to_non_nullable
              as String?,
      valueCrl: freezed == valueCrl
          ? _value.valueCrl
          : valueCrl // ignore: cast_nullable_to_non_nullable
              as String?,
      valueRu: freezed == valueRu
          ? _value.valueRu
          : valueRu // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributeImplCopyWith<$Res>
    implements $AttributeCopyWith<$Res> {
  factory _$$AttributeImplCopyWith(
          _$AttributeImpl value, $Res Function(_$AttributeImpl) then) =
      __$$AttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name_uz") String? nameUz,
      @JsonKey(name: "name_crl") String? nameCrl,
      @JsonKey(name: "name_ru") String? nameRu,
      @JsonKey(name: "value_uz") String? valueUz,
      @JsonKey(name: "value_crl") String? valueCrl,
      @JsonKey(name: "value_ru") String? valueRu});
}

/// @nodoc
class __$$AttributeImplCopyWithImpl<$Res>
    extends _$AttributeCopyWithImpl<$Res, _$AttributeImpl>
    implements _$$AttributeImplCopyWith<$Res> {
  __$$AttributeImplCopyWithImpl(
      _$AttributeImpl _value, $Res Function(_$AttributeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameUz = freezed,
    Object? nameCrl = freezed,
    Object? nameRu = freezed,
    Object? valueUz = freezed,
    Object? valueCrl = freezed,
    Object? valueRu = freezed,
  }) {
    return _then(_$AttributeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameUz: freezed == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCrl: freezed == nameCrl
          ? _value.nameCrl
          : nameCrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRu: freezed == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String?,
      valueUz: freezed == valueUz
          ? _value.valueUz
          : valueUz // ignore: cast_nullable_to_non_nullable
              as String?,
      valueCrl: freezed == valueCrl
          ? _value.valueCrl
          : valueCrl // ignore: cast_nullable_to_non_nullable
              as String?,
      valueRu: freezed == valueRu
          ? _value.valueRu
          : valueRu // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeImpl implements _Attribute {
  const _$AttributeImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name_uz") this.nameUz,
      @JsonKey(name: "name_crl") this.nameCrl,
      @JsonKey(name: "name_ru") this.nameRu,
      @JsonKey(name: "value_uz") this.valueUz,
      @JsonKey(name: "value_crl") this.valueCrl,
      @JsonKey(name: "value_ru") this.valueRu});

  factory _$AttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name_uz")
  final String? nameUz;
  @override
  @JsonKey(name: "name_crl")
  final String? nameCrl;
  @override
  @JsonKey(name: "name_ru")
  final String? nameRu;
  @override
  @JsonKey(name: "value_uz")
  final String? valueUz;
  @override
  @JsonKey(name: "value_crl")
  final String? valueCrl;
  @override
  @JsonKey(name: "value_ru")
  final String? valueRu;

  @override
  String toString() {
    return 'Attribute(id: $id, nameUz: $nameUz, nameCrl: $nameCrl, nameRu: $nameRu, valueUz: $valueUz, valueCrl: $valueCrl, valueRu: $valueRu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            (identical(other.nameCrl, nameCrl) || other.nameCrl == nameCrl) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.valueUz, valueUz) || other.valueUz == valueUz) &&
            (identical(other.valueCrl, valueCrl) ||
                other.valueCrl == valueCrl) &&
            (identical(other.valueRu, valueRu) || other.valueRu == valueRu));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, nameUz, nameCrl, nameRu, valueUz, valueCrl, valueRu);

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeImplCopyWith<_$AttributeImpl> get copyWith =>
      __$$AttributeImplCopyWithImpl<_$AttributeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeImplToJson(
      this,
    );
  }
}

abstract class _Attribute implements Attribute {
  const factory _Attribute(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name_uz") final String? nameUz,
      @JsonKey(name: "name_crl") final String? nameCrl,
      @JsonKey(name: "name_ru") final String? nameRu,
      @JsonKey(name: "value_uz") final String? valueUz,
      @JsonKey(name: "value_crl") final String? valueCrl,
      @JsonKey(name: "value_ru") final String? valueRu}) = _$AttributeImpl;

  factory _Attribute.fromJson(Map<String, dynamic> json) =
      _$AttributeImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name_uz")
  String? get nameUz;
  @override
  @JsonKey(name: "name_crl")
  String? get nameCrl;
  @override
  @JsonKey(name: "name_ru")
  String? get nameRu;
  @override
  @JsonKey(name: "value_uz")
  String? get valueUz;
  @override
  @JsonKey(name: "value_crl")
  String? get valueCrl;
  @override
  @JsonKey(name: "value_ru")
  String? get valueRu;

  /// Create a copy of Attribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeImplCopyWith<_$AttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "image") this.image});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "image")
  final String? image;

  @override
  String toString() {
    return 'Image(id: $id, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "image") final String? image}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "image")
  String? get image;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
