import 'dart:convert';

import 'package:dartx/dartx.dart';
import 'package:edtech/core/constants/shared_preference_constants.dart';
import 'package:edtech/core/mixin/log_mixin.dart';
import 'package:edtech/core/services/local_storage/app_preferences.dart';
import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AppPreferences)
class AppPreferencesImpl extends AppPreferences with LogMixin {
  AppPreferencesImpl(this._sharedPreference)
      : _encryptedSharedPreferences = EncryptedSharedPreferences(
          prefs: _sharedPreference,
        );

  final SharedPreferences _sharedPreference;
  final EncryptedSharedPreferences _encryptedSharedPreferences;

  @override
  bool get isDarkMode =>
      _sharedPreference.getBool(LocalStorageKey.isDarkMode) ?? false;

  @override
  String get deviceToken =>
      _sharedPreference.getString(LocalStorageKey.deviceToken) ?? '';

  @override
  String get languageCode =>
      _sharedPreference.getString(LocalStorageKey.languageCode) ?? '';

  @override
  bool get isFirstLogin =>
      _sharedPreference.getBool(LocalStorageKey.isFirstLogin) ?? true;

  @override
  bool get isFirstLaunchApp {
    final value =
        _sharedPreference.getBool(LocalStorageKey.isFirstLaunchApp) ?? true;
    return value;
  }

  @override
  Future<String> get accessToken async =>
      _encryptedSharedPreferences.getString(LocalStorageKey.accessToken);

  @override
  Future<String> get refreshToken async =>
      _encryptedSharedPreferences.getString(LocalStorageKey.refreshToken);

  // @override
  // bool get isLoggedIn =>
  //     _sharedPreference.getString(LocalStorageKey.accessToken).isNotNullOrEmpty;
  @override
  Future<bool> get isLoggedIn async {
    final token = await _encryptedSharedPreferences
        .getString(LocalStorageKey.accessToken);
    return token.isNotNullOrEmpty;
  }

  @override
  String? get subUser {
    final subUser = _sharedPreference.getString(LocalStorageKey.subUser);
    if (subUser == null) {
      return null;
    }

    return json.decode(subUser) as String;
  }

  @override
  String? get currentUser {
    final user = _sharedPreference.getString(LocalStorageKey.currentUser);
    if (user == null) {
      return null;
    }

    return json.decode(user) as String;
  }

  @override
  Future<bool> saveLanguageCode({required String languageCode}) =>
      _sharedPreference.setString(
        LocalStorageKey.languageCode,
        languageCode,
      );

  @override
  Future<bool> saveIsFirstLogin({bool isFirstLogin = true}) =>
      _sharedPreference.setBool(
        LocalStorageKey.isFirstLogin,
        isFirstLogin,
      );

  @override
  Future<bool> saveIsFirsLaunchApp({required bool isFirstLaunchApp}) async {
    final result = await _sharedPreference.setBool(
      LocalStorageKey.isFirstLaunchApp,
      isFirstLaunchApp,
    );
    return result;
  }

  @override
  Future<bool> saveIsDarkMode({required bool isDarkMode}) =>
      _sharedPreference.setBool(
        LocalStorageKey.isDarkMode,
        isDarkMode,
      );

  @override
  Future<bool> saveSubUSer(String subUser) async => _sharedPreference.setString(
        LocalStorageKey.subUser,
        json.encode(subUser),
      );

  @override
  Future<void> saveAccessToken(String token) async {
    await _encryptedSharedPreferences.setString(
      LocalStorageKey.accessToken,
      token,
    );
  }

  @override
  Future<void> saveRefreshToken(String token) async {
    await _encryptedSharedPreferences.setString(
      LocalStorageKey.refreshToken,
      token,
    );
  }

  @override
  Future<bool> saveCurrentUser(String user) => _sharedPreference.setString(
        LocalStorageKey.currentUser,
        json.encode(user),
      );

  @override
  Future<bool> saveDeviceToken(String token) =>
      _sharedPreference.setString(LocalStorageKey.deviceToken, token);

  @override
  Future<void> clearCurrentUserData() async {
    await Future.wait(
      [
        _sharedPreference.remove(LocalStorageKey.currentUser),
        _sharedPreference.remove(LocalStorageKey.accessToken),
        _sharedPreference.remove(LocalStorageKey.refreshToken),
        _sharedPreference.remove(LocalStorageKey.subUser),
      ],
    );
  }

  @override
  Future<String> get zaloAccessToken async =>
      _encryptedSharedPreferences.getString(LocalStorageKey.zaloAccessToken);

  @override
  Future<String> get zaloRefreshToken async =>
      _encryptedSharedPreferences.getString(LocalStorageKey.zaloRefreshToken);

  @override
  Future<void> saveZaloAccessToken(String token) async {
    await _encryptedSharedPreferences.setString(
      LocalStorageKey.zaloAccessToken,
      token,
    );
  }

  @override
  Future<void> saveZaloRefreshToken(String token) async {
    await _encryptedSharedPreferences.setString(
      LocalStorageKey.zaloRefreshToken,
      token,
    );
  }
}
