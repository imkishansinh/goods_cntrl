// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModelList _$ProfileModelListFromJson(Map<String, dynamic> json) {
  return _ProfileModelList.fromJson(json);
}

/// @nodoc
mixin _$ProfileModelList {
  List<ProfileModel> get profileModelList => throw _privateConstructorUsedError;

  /// Serializes this ProfileModelList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileModelListCopyWith<ProfileModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelListCopyWith<$Res> {
  factory $ProfileModelListCopyWith(
          ProfileModelList value, $Res Function(ProfileModelList) then) =
      _$ProfileModelListCopyWithImpl<$Res, ProfileModelList>;
  @useResult
  $Res call({List<ProfileModel> profileModelList});
}

/// @nodoc
class _$ProfileModelListCopyWithImpl<$Res, $Val extends ProfileModelList>
    implements $ProfileModelListCopyWith<$Res> {
  _$ProfileModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileModelList = null,
  }) {
    return _then(_value.copyWith(
      profileModelList: null == profileModelList
          ? _value.profileModelList
          : profileModelList // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelListImplCopyWith<$Res>
    implements $ProfileModelListCopyWith<$Res> {
  factory _$$ProfileModelListImplCopyWith(_$ProfileModelListImpl value,
          $Res Function(_$ProfileModelListImpl) then) =
      __$$ProfileModelListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProfileModel> profileModelList});
}

/// @nodoc
class __$$ProfileModelListImplCopyWithImpl<$Res>
    extends _$ProfileModelListCopyWithImpl<$Res, _$ProfileModelListImpl>
    implements _$$ProfileModelListImplCopyWith<$Res> {
  __$$ProfileModelListImplCopyWithImpl(_$ProfileModelListImpl _value,
      $Res Function(_$ProfileModelListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileModelList = null,
  }) {
    return _then(_$ProfileModelListImpl(
      profileModelList: null == profileModelList
          ? _value._profileModelList
          : profileModelList // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelListImpl implements _ProfileModelList {
  const _$ProfileModelListImpl(
      {required final List<ProfileModel> profileModelList})
      : _profileModelList = profileModelList;

  factory _$ProfileModelListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelListImplFromJson(json);

  final List<ProfileModel> _profileModelList;
  @override
  List<ProfileModel> get profileModelList {
    if (_profileModelList is EqualUnmodifiableListView)
      return _profileModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profileModelList);
  }

  @override
  String toString() {
    return 'ProfileModelList(profileModelList: $profileModelList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelListImpl &&
            const DeepCollectionEquality()
                .equals(other._profileModelList, _profileModelList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_profileModelList));

  /// Create a copy of ProfileModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelListImplCopyWith<_$ProfileModelListImpl> get copyWith =>
      __$$ProfileModelListImplCopyWithImpl<_$ProfileModelListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelListImplToJson(
      this,
    );
  }
}

abstract class _ProfileModelList implements ProfileModelList {
  const factory _ProfileModelList(
          {required final List<ProfileModel> profileModelList}) =
      _$ProfileModelListImpl;

  factory _ProfileModelList.fromJson(Map<String, dynamic> json) =
      _$ProfileModelListImpl.fromJson;

  @override
  List<ProfileModel> get profileModelList;

  /// Create a copy of ProfileModelList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelListImplCopyWith<_$ProfileModelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_status')
  String get userStatus => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get userRole => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? gender,
      String email,
      String? mobile,
      @JsonKey(name: 'user_status') String userStatus,
      String? address,
      String? userRole,
      DateTime? createdAt,
      String? photo});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? email = null,
    Object? mobile = freezed,
    Object? userStatus = null,
    Object? address = freezed,
    Object? userRole = freezed,
    Object? createdAt = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: null == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? gender,
      String email,
      String? mobile,
      @JsonKey(name: 'user_status') String userStatus,
      String? address,
      String? userRole,
      DateTime? createdAt,
      String? photo});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? email = null,
    Object? mobile = freezed,
    Object? userStatus = null,
    Object? address = freezed,
    Object? userRole = freezed,
    Object? createdAt = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: null == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {this.firstName,
      this.lastName,
      this.gender,
      required this.email,
      this.mobile,
      @JsonKey(name: 'user_status') required this.userStatus,
      this.address,
      this.userRole,
      this.createdAt,
      this.photo});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? gender;
  @override
  final String email;
  @override
  final String? mobile;
  @override
  @JsonKey(name: 'user_status')
  final String userStatus;
  @override
  final String? address;
  @override
  final String? userRole;
  @override
  final DateTime? createdAt;
  @override
  final String? photo;

  @override
  String toString() {
    return 'ProfileModel(firstName: $firstName, lastName: $lastName, gender: $gender, email: $email, mobile: $mobile, userStatus: $userStatus, address: $address, userRole: $userRole, createdAt: $createdAt, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.userStatus, userStatus) ||
                other.userStatus == userStatus) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, gender,
      email, mobile, userStatus, address, userRole, createdAt, photo);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {final String? firstName,
      final String? lastName,
      final String? gender,
      required final String email,
      final String? mobile,
      @JsonKey(name: 'user_status') required final String userStatus,
      final String? address,
      final String? userRole,
      final DateTime? createdAt,
      final String? photo}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get gender;
  @override
  String get email;
  @override
  String? get mobile;
  @override
  @JsonKey(name: 'user_status')
  String get userStatus;
  @override
  String? get address;
  @override
  String? get userRole;
  @override
  DateTime? get createdAt;
  @override
  String? get photo;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
