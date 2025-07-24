// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendOtpModel _$SendOtpModelFromJson(Map<String, dynamic> json) {
  return _SendOtpModel.fromJson(json);
}

/// @nodoc
mixin _$SendOtpModel {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this SendOtpModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendOtpModelCopyWith<SendOtpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpModelCopyWith<$Res> {
  factory $SendOtpModelCopyWith(
          SendOtpModel value, $Res Function(SendOtpModel) then) =
      _$SendOtpModelCopyWithImpl<$Res, SendOtpModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SendOtpModelCopyWithImpl<$Res, $Val extends SendOtpModel>
    implements $SendOtpModelCopyWith<$Res> {
  _$SendOtpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendOtpModelImplCopyWith<$Res>
    implements $SendOtpModelCopyWith<$Res> {
  factory _$$SendOtpModelImplCopyWith(
          _$SendOtpModelImpl value, $Res Function(_$SendOtpModelImpl) then) =
      __$$SendOtpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendOtpModelImplCopyWithImpl<$Res>
    extends _$SendOtpModelCopyWithImpl<$Res, _$SendOtpModelImpl>
    implements _$$SendOtpModelImplCopyWith<$Res> {
  __$$SendOtpModelImplCopyWithImpl(
      _$SendOtpModelImpl _value, $Res Function(_$SendOtpModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendOtpModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendOtpModelImpl implements _SendOtpModel {
  const _$SendOtpModelImpl({required this.message});

  factory _$SendOtpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpModelImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SendOtpModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SendOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpModelImplCopyWith<_$SendOtpModelImpl> get copyWith =>
      __$$SendOtpModelImplCopyWithImpl<_$SendOtpModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpModelImplToJson(
      this,
    );
  }
}

abstract class _SendOtpModel implements SendOtpModel {
  const factory _SendOtpModel({required final String message}) =
      _$SendOtpModelImpl;

  factory _SendOtpModel.fromJson(Map<String, dynamic> json) =
      _$SendOtpModelImpl.fromJson;

  @override
  String get message;

  /// Create a copy of SendOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOtpModelImplCopyWith<_$SendOtpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
