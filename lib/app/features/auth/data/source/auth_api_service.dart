import 'package:edtech/app/features/auth/data/models/auth_response_data.dart';
import 'package:edtech/app/features/auth/data/models/user_data.dart';
import 'package:edtech/core/constants/url_constants.dart';
import 'package:edtech/core/infrastructure/data/api/client/auth_app_server_api_client.dart';
import 'package:edtech/core/infrastructure/data/api/client/base/rest_api_client.dart';
import 'package:edtech/core/infrastructure/data/api/client/none_auth_app_server_api_client.dart';
import 'package:edtech/core/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:edtech/core/model/typedef.dart';
import 'package:edtech/core/utils/device_info_utils.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthApiService {
  AuthApiService(
    this._noneAuthAppServerApiClient,
    this._authAppServerApiClient,
  );

  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;
  final AuthAppServerApiClient _authAppServerApiClient;

  Future<AuthResponseData?> login({
    required String email,
    required String password,
  }) async {
    final deviceInfo = await DeviceInfoUtils.getDeviceInfo();

    return _authAppServerApiClient.request(
      method: RestMethod.post,
      path: '${UrlConstants.apiVersion}/mobile/auth/login',
      body: {
        'email': email,
        'password': password,
        'device_info': deviceInfo,
      },
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      decoder: (json) => AuthResponseData.fromJson(json as JSON),
    );
  }

  Future<AuthResponseData?> loginWithGoogle({
    required String idToken,
    required String email,
    required String name,
    String? photoUrl,
  }) async {
    final deviceInfo = await DeviceInfoUtils.getDeviceInfo();

    return _authAppServerApiClient.request(
      method: RestMethod.post,
      path: '${UrlConstants.apiVersion}/mobile/auth/google',
      body: {
        'id_token': idToken,
        'email': email,
        'name': name,
        'photo_url': photoUrl,
        'device_info': deviceInfo,
      },
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      decoder: (json) => AuthResponseData.fromJson(json as JSON),
    );
  }

  Future<void> logout() async {
    await _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.plain,
      path: '${UrlConstants.apiVersion}/logout',
    );
  }

  // Future<DataResponse<AuthResponseData>> register({
  //   required String username,
  //   required String email,
  //   required String password,
  //   required int gender,
  // }) async {
  //   return _noneAuthAppServerApiClient.request(
  //     method: RestMethod.post,
  //     path: '${UrlConstants.apiVersion}/authentication/register',
  //     body: {
  //       'username': username,
  //       'gender': gender,
  //       'email': email,
  //       'password': password,
  //       'password_confirmation': password,
  //     },
  //     decoder: AuthResponseData.fromJson,
  //   );
  // }

  Future<String?> forgotPassword(String phoneNumber,
      [int sendMethod = 2]) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '${UrlConstants.apiVersion}/password/request',
      body: {
        'phone-number': phoneNumber,
        'send-method': sendMethod,
      },
      decoder: (data) =>
          // ignore: avoid_dynamic_calls
          data != null ? (data as JSON)['data']['token'] as String : '',
    );
  }

  Future<void> resetPassword({
    required String token,
    required String password,
  }) async {
    await _noneAuthAppServerApiClient.request(
      method: RestMethod.put,
      path: '${UrlConstants.apiVersion}/reset-password',
      body: {
        'token': token,
        'password': password,
      },
    );
  }

  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    await _authAppServerApiClient.request(
      method: RestMethod.put,
      path: '${UrlConstants.apiVersion}/user/change-password',
      body: {
        'current-password': oldPassword,
        'new-password': newPassword,
      },
    );
  }

  Future<UserData?> getMe() async {
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      path: '${UrlConstants.apiVersion}/mobile/users/persion',
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      decoder: (json) {
        final data = json as JSON;
        return UserData.fromJson(data['data'] as JSON);
      },
    );
  }

  // Future<DataResponse<StudentInfoData>?> getStudentInfo() async {
  //   return _authAppServerApiClient.request(
  //     method: RestMethod.get,
  //     path: '${UrlConstants.apiVersion}/student-info',
  //     decoder: (json) => StudentInfoData.fromJson(json as JSON),
  //   );
  // }

  Future<void> submitOTPCode({
    required String token,
    required String otpCode,
  }) async {
    await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '${UrlConstants.apiVersion}/otp',
      body: {
        'token': token,
        'code': otpCode,
      },
    );
  }

  Future<void> resnedOTPCode(String token, [int sendMethod = 2]) async {
    await _noneAuthAppServerApiClient.request(
      method: RestMethod.put,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '${UrlConstants.apiVersion}/otp',
      body: {
        'token': token,
        'send-method': sendMethod,
      },
    );
  }
}
