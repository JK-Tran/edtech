import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_data.dart';

part 'auth_response_data.freezed.dart';
part 'auth_response_data.g.dart';

@freezed
class AuthResponseData with _$AuthResponseData {
  const factory AuthResponseData({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') AuthData? data,
  }) = _AuthResponseData;

  factory AuthResponseData.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDataFromJson(json);
}

@freezed
class AuthData with _$AuthData {
  const factory AuthData({
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'user') UserData? user,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}
