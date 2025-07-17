import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified') @Default(false) bool emailVerified,
    @JsonKey(name: 'login_type') @Default('local') String loginType,
    @JsonKey(name: 'detail') UserDetailData? detail,
    @JsonKey(name: 'is_locked') @Default(false) bool isLock,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
  }) = _UserData;

  const UserData._();

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class UserDetailData with _$UserDetailData {
  const factory UserDetailData({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'gender') int? gender,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'birthday') String? birthday,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'phone_code') String? phoneCode,
    @JsonKey(name: 'old_phone_number') String? oldPhoneNumber,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'experience') String? experience,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _UserDetailData;

  const UserDetailData._();

  factory UserDetailData.fromJson(Map<String, dynamic> json) =>
      _$UserDetailDataFromJson(json);
}
