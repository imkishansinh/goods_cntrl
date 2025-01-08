import 'package:json_annotation/json_annotation.dart';

part 'supa_user_table_model.g.dart';

@JsonSerializable()
class SupaUserTableModel {
  factory SupaUserTableModel.fromJson(Map<String, dynamic> json) =>
      _$SupaUserTableModelFromJson(json);
  SupaUserTableModel(this.email);

  String email;

  Map<String, dynamic> toJson() => _$SupaUserTableModelToJson(this);
}
