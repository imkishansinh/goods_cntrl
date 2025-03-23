// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModelList with _$ProfileModelList {
  const factory ProfileModelList({
    required List<ProfileModel> profileModelList,
  }) = _ProfileModelList;

  factory ProfileModelList.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelListFromJson(json);
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? gender,
    required String email,
    String? mobile,
    @JsonKey(name: 'user_status') String? userStatus,
    String? address,
    @JsonKey(name: 'user_role') UserRole? userRole,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    String? photo,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  factory ProfileModel.updateProfile({
    required String firstName,
    required String lastName,
    required String mobile,
    required String email,
  }) {
    return ProfileModel(
      firstName: firstName,
      lastName: lastName,
      mobile: mobile,
      email: email,
    );
  }
}

enum UserRole { distribute, retailer }

enum UserStatus {
  active,
  block,
  @JsonKey(name: 'kyc_pending')
  kycPending
}

enum Gender {
  male,
  female,
}

enum MemmberRole {
  po,
  accountant,
  @JsonKey(name: 'view_only')
  viewOnly,
}
