// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BusinessModel _$BusinessModelFromJson(Map<String, dynamic> json) {
  return _BusinessModel.fromJson(json);
}

/// @nodoc
mixin _$BusinessModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_name')
  String get businessName => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unique_code')
  String get businessUniqueCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_status')
  BusinessStatus get businessStatus => throw _privateConstructorUsedError;

  /// Serializes this BusinessModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessModelCopyWith<BusinessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessModelCopyWith<$Res> {
  factory $BusinessModelCopyWith(
    BusinessModel value,
    $Res Function(BusinessModel) then,
  ) = _$BusinessModelCopyWithImpl<$Res, BusinessModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'business_name') String businessName,
    @JsonKey(name: 'business_unique_code') String businessUniqueCode,
    @JsonKey(name: 'business_status') BusinessStatus businessStatus,
  });
}

/// @nodoc
class _$BusinessModelCopyWithImpl<$Res, $Val extends BusinessModel>
    implements $BusinessModelCopyWith<$Res> {
  _$BusinessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessName = null,
    Object? businessUniqueCode = null,
    Object? businessStatus = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            businessName:
                null == businessName
                    ? _value.businessName
                    : businessName // ignore: cast_nullable_to_non_nullable
                        as String,
            businessUniqueCode:
                null == businessUniqueCode
                    ? _value.businessUniqueCode
                    : businessUniqueCode // ignore: cast_nullable_to_non_nullable
                        as String,
            businessStatus:
                null == businessStatus
                    ? _value.businessStatus
                    : businessStatus // ignore: cast_nullable_to_non_nullable
                        as BusinessStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BusinessModelImplCopyWith<$Res>
    implements $BusinessModelCopyWith<$Res> {
  factory _$$BusinessModelImplCopyWith(
    _$BusinessModelImpl value,
    $Res Function(_$BusinessModelImpl) then,
  ) = __$$BusinessModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'business_name') String businessName,
    @JsonKey(name: 'business_unique_code') String businessUniqueCode,
    @JsonKey(name: 'business_status') BusinessStatus businessStatus,
  });
}

/// @nodoc
class __$$BusinessModelImplCopyWithImpl<$Res>
    extends _$BusinessModelCopyWithImpl<$Res, _$BusinessModelImpl>
    implements _$$BusinessModelImplCopyWith<$Res> {
  __$$BusinessModelImplCopyWithImpl(
    _$BusinessModelImpl _value,
    $Res Function(_$BusinessModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BusinessModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessName = null,
    Object? businessUniqueCode = null,
    Object? businessStatus = null,
  }) {
    return _then(
      _$BusinessModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        businessName:
            null == businessName
                ? _value.businessName
                : businessName // ignore: cast_nullable_to_non_nullable
                    as String,
        businessUniqueCode:
            null == businessUniqueCode
                ? _value.businessUniqueCode
                : businessUniqueCode // ignore: cast_nullable_to_non_nullable
                    as String,
        businessStatus:
            null == businessStatus
                ? _value.businessStatus
                : businessStatus // ignore: cast_nullable_to_non_nullable
                    as BusinessStatus,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessModelImpl implements _BusinessModel {
  const _$BusinessModelImpl({
    required this.id,
    @JsonKey(name: 'business_name') required this.businessName,
    @JsonKey(name: 'business_unique_code') required this.businessUniqueCode,
    @JsonKey(name: 'business_status') required this.businessStatus,
  });

  factory _$BusinessModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'business_name')
  final String businessName;
  @override
  @JsonKey(name: 'business_unique_code')
  final String businessUniqueCode;
  @override
  @JsonKey(name: 'business_status')
  final BusinessStatus businessStatus;

  @override
  String toString() {
    return 'BusinessModel(id: $id, businessName: $businessName, businessUniqueCode: $businessUniqueCode, businessStatus: $businessStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.businessUniqueCode, businessUniqueCode) ||
                other.businessUniqueCode == businessUniqueCode) &&
            (identical(other.businessStatus, businessStatus) ||
                other.businessStatus == businessStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    businessName,
    businessUniqueCode,
    businessStatus,
  );

  /// Create a copy of BusinessModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessModelImplCopyWith<_$BusinessModelImpl> get copyWith =>
      __$$BusinessModelImplCopyWithImpl<_$BusinessModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessModelImplToJson(this);
  }
}

abstract class _BusinessModel implements BusinessModel {
  const factory _BusinessModel({
    required final int id,
    @JsonKey(name: 'business_name') required final String businessName,
    @JsonKey(name: 'business_unique_code')
    required final String businessUniqueCode,
    @JsonKey(name: 'business_status')
    required final BusinessStatus businessStatus,
  }) = _$BusinessModelImpl;

  factory _BusinessModel.fromJson(Map<String, dynamic> json) =
      _$BusinessModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'business_name')
  String get businessName;
  @override
  @JsonKey(name: 'business_unique_code')
  String get businessUniqueCode;
  @override
  @JsonKey(name: 'business_status')
  BusinessStatus get businessStatus;

  /// Create a copy of BusinessModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessModelImplCopyWith<_$BusinessModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
