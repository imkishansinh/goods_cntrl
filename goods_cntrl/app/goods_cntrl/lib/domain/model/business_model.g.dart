// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessModelImpl _$$BusinessModelImplFromJson(Map<String, dynamic> json) =>
    _$BusinessModelImpl(
      id: (json['id'] as num).toInt(),
      businessName: json['business_name'] as String,
      businessUniqueCode: json['business_unique_code'] as String,
      businessStatus: $enumDecode(
        _$BusinessStatusEnumMap,
        json['business_status'],
      ),
    );

Map<String, dynamic> _$$BusinessModelImplToJson(_$BusinessModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_name': instance.businessName,
      'business_unique_code': instance.businessUniqueCode,
      'business_status': _$BusinessStatusEnumMap[instance.businessStatus]!,
    };

const _$BusinessStatusEnumMap = {
  BusinessStatus.active: 'active',
  BusinessStatus.block: 'block',
  BusinessStatus.kycPending: 'kyc_pending',
  BusinessStatus.paymentDue: 'payment_due',
};
