// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum UserRole { distribute, retailer }

@JsonEnum()
enum UserStatus {
  active,
  block,
  @JsonValue('kyc_pending')
  kycPending,
}

@JsonEnum()
enum BusinessStatus {
  active,
  block,
  @JsonValue('kyc_pending')
  kycPending,
  @JsonValue('payment_due')
  paymentDue,
}

@JsonEnum()
enum Gender { male, female }

@JsonEnum()
enum MemberRole {
  po,
  accountant,
  @JsonValue('view_only')
  viewOnly,
}
