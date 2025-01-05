import 'package:json_annotation/json_annotation.dart';

part 'supa_user_table_model.g.dart';

@JsonSerializable()
class SupaUserTableModel {
  SupaUserTableModel(this.email);
  String email;

  factory SupaUserTableModel.fromJson(Map<String, dynamic> json) =>
      _$SupaUserTableModelFromJson(json);

  Map<String, dynamic> toJson() => _$SupaUserTableModelToJson(this);
}
