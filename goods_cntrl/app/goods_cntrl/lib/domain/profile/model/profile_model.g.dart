// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelListImpl _$$ProfileModelListImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileModelListImpl(
      profileModelList: (json['profileModelList'] as List<dynamic>)
          .map((e) => ProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileModelListImplToJson(
        _$ProfileModelListImpl instance) =>
    <String, dynamic>{
      'profileModelList': instance.profileModelList,
    };

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      gender: json['gender'] as String?,
      email: json['email'] as String,
      mobile: json['mobile'] as String?,
      userStatus: json['user_status'] as String,
      address: json['address'] as String?,
      userRole: json['userRole'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'email': instance.email,
      'mobile': instance.mobile,
      'user_status': instance.userStatus,
      'address': instance.address,
      'userRole': instance.userRole,
      'createdAt': instance.createdAt?.toIso8601String(),
      'photo': instance.photo,
    };
