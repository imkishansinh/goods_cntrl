// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goods_cntrl/domain/enums/enums.dart';

part 'business_model.freezed.dart';
part 'business_model.g.dart';

@freezed
class BusinessModel with _$BusinessModel {
  const factory BusinessModel({
    required int id,
    @JsonKey(name: 'business_name') required String businessName,
    @JsonKey(name: 'business_unique_code') required String businessUniqueCode,
    @JsonKey(name: 'business_status') required BusinessStatus businessStatus,
  }) = _BusinessModel;

  factory BusinessModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessModelFromJson(json);
}
