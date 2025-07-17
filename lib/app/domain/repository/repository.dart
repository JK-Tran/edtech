import 'package:edtech/core/model/shared_enum.dart';

abstract class Repository {
  bool get isFirstLaunchApp;

  bool get isFirstLogin;

  bool get isDarkMode;

  LanguageCode get languageCode;

  Stream<bool> get onConnectivityChanged;

  Future<bool> saveDeviceToken(String deviceToken);

  Future<bool> saveIsFirstLogin({required bool isFirstLogin});

  Future<bool> saveIsFirstLaunchApp({required bool isFirstLaunchApp});

  Future<bool> saveIsDarkMode({required bool isDarkMode});

  Future<bool> saveLanguageCode(LanguageCode languageCode);
}
