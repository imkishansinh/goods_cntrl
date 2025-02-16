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
    String? firstName,
    String? lastName,
    String? gender,
    required String email,
    String? mobile,
    @JsonKey(name: 'user_status') required String userStatus,
    String? address,
    String? userRole,
    DateTime? createdAt,
    String? photo,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
