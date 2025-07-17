import 'dart:convert';

import 'package:dartx/dartx.dart';
import 'package:edtech/app/features/auth/data/mapper/user_data_mapper.dart';
import 'package:edtech/app/features/auth/data/models/user_data.dart';
import 'package:edtech/app/features/auth/data/source/auth_api_service.dart';
// import 'package:edtech/app/features/auth/domain/entity/student_info.dart';
import 'package:edtech/app/features/auth/domain/entity/user.dart';
import 'package:edtech/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:edtech/core/services/local_storage/app_preferences.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(
    this._appPreferences,
    this._apiService,
    this._userDataMapper,
  );

  final AppPreferences _appPreferences;
  final AuthApiService _apiService;
  final UserDataMapper _userDataMapper;

  @override
  Future<bool> get isLoggedIn async => _appPreferences.isLoggedIn;

  @override
  Future<bool> get subUserExist async => _appPreferences.isLoggedIn;

  // @override
  // Future<void> login({
  //   required String username,
  //   required String password,
  // }) async {
  //   if (username == 'student@example.com' && password == 'password123') {

  //     await _appPreferences.saveAccessToken(accessToken);
  //     await _appPreferences.saveCurrentUser(json.encode(_mockUser.toJson()));
  //   } else {
  //     throw Exception('Invalid username or password auth');
  //   }
  // }
  @override
  Future<void> login({
    required String email,
    required String password,
  }) async {
    final response = await _apiService.login(
      email: email,
      password: password,
    );

    if (response?.data?.accessToken != null) {
      await saveAccessToken(response!.data!.accessToken);

      // Lấy thông tin user và lưu vào local storage
      final userData = await _apiService.getMe();
      if (userData != null) {
        await saveCurrentUser(_userDataMapper.mapToEntity(userData));
      }
    }
  }

  @override
  Future<User?> loginWithGoogle({
    required String idToken,
    required String email,
    required String name,
    String? photoUrl,
  }) async {
    final response = await _apiService.loginWithGoogle(
      idToken: idToken,
      email: email,
      name: name,
      photoUrl: photoUrl,
    );

    if (response?.data?.accessToken != null) {
      await saveAccessToken(response!.data!.accessToken);

      // Lấy thông tin user và lưu vào local storage
      final userData = await _apiService.getMe();
      if (userData != null) {
        await saveCurrentUser(_userDataMapper.mapToEntity(userData));
      }
    }
    return null;
  }

  @override
  Future<void> logout() async {
    //await _apiService.logout();
    await _appPreferences.clearCurrentUserData();
  }

  @override
  Future<void> resetPassword({
    required String token,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<String?> forgotPassword(String phoneNumber,
      [int sendMethod = 2]) async {
    await Future.delayed(const Duration(seconds: 1));
    return 'mock_token';
  }

  @override
  Future<void> submitOTPCode({
    required String token,
    required String otpCode,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> resendOTPCode(String token, [int sendMethod = 2]) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> register({
    required String username,
    required String email,
    required String password,
    required Gender gender,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    // // Tạo access token thật
    // const accessToken =
    //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IlRlc3QgVXNlciIsImlhdCI6MTUxNjIzOTAyMn0.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c';

    // await saveAccessToken(accessToken);
    // await saveCurrentUser(_mockUser);
  }

  @override
  User getCurrentUser() {
    if (_appPreferences.currentUser != null) {
      final UserData userData = UserData.fromJson(
        json.decode(_appPreferences.currentUser!) as Map<String, dynamic>,
      );

      return _userDataMapper.mapToEntity(userData);
    }

    return _userDataMapper.mapToEntity(null);
  }

  @override
  Future<void> clearCurrentUserData() => _appPreferences.clearCurrentUserData();

  @override
  Future<User> getMe() async {
    final response = await _apiService.getMe();

    return _userDataMapper.mapToEntity(response);
  }

  @override
  Future<User> getStudentInfo() async {
    final response = await _apiService.getMe();
    return _userDataMapper.mapToEntity(response);
  }

  @override
  Future<bool> saveCurrentUser(User user) async {
    return _appPreferences.saveCurrentUser(json.encode(user.toJson()));
  }

  @override
  Future<void> saveAccessToken(String? accessToken) async {
    if (!accessToken.isNullOrEmpty) {
      await _appPreferences.saveAccessToken(accessToken!);
    }
  }

  @override
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<String?> getAccessToken() {
    throw UnimplementedError();
  }
}
