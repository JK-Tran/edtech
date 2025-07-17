import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_data.freezed.dart';
part 'role_data.g.dart';

@freezed
class RoleData with _$RoleData {
  const factory RoleData({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') String? name,
  }) = _RoleData;

  const RoleData._();

  factory RoleData.fromJson(Map<String, dynamic> json) =>
      _$RoleDataFromJson(json);
}
