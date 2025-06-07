// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelListImpl _$$ProfileModelListImplFromJson(
  Map<String, dynamic> json,
) => _$ProfileModelListImpl(
  profileModelList: (json['profileModelList'] as List<dynamic>)
      .map((e) => ProfileModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ProfileModelListImplToJson(
  _$ProfileModelListImpl instance,
) => <String, dynamic>{'profileModelList': instance.profileModelList};

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      email: json['email'] as String,
      mobile: json['mobile'] as String?,
      userStatus: $enumDecodeNullable(_$UserStatusEnumMap, json['user_status']),
      address: json['address'] as String?,
      userRole: $enumDecodeNullable(_$UserRoleEnumMap, json['user_role']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'email': instance.email,
      'mobile': instance.mobile,
      'user_status': _$UserStatusEnumMap[instance.userStatus],
      'address': instance.address,
      'user_role': _$UserRoleEnumMap[instance.userRole],
      'created_at': instance.createdAt?.toIso8601String(),
      'photo': instance.photo,
    };

const _$UserStatusEnumMap = {
  UserStatus.active: 'active',
  UserStatus.block: 'block',
  UserStatus.kycPending: 'kyc_pending',
};

const _$UserRoleEnumMap = {
  UserRole.distribute: 'distribute',
  UserRole.retailer: 'retailer',
};
