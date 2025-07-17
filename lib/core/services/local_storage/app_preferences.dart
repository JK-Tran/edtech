abstract class AppPreferences {
  bool get isDarkMode;

  String get deviceToken;

  String get languageCode;

  bool get isFirstLogin;

  bool get isFirstLaunchApp;

  String? get subUser;

  String? get currentUser;

  Future<String> get accessToken;

  Future<String> get refreshToken;

  Future<bool> get isLoggedIn;

  Future<bool> saveLanguageCode({required String languageCode});

  Future<bool> saveIsFirstLogin({bool isFirstLogin});

  Future<bool> saveIsFirsLaunchApp({required bool isFirstLaunchApp});

  Future<void> saveAccessToken(String token);

  Future<void> saveRefreshToken(String token);

  Future<String> get zaloAccessToken;

  Future<String> get zaloRefreshToken;

  Future<void> saveZaloAccessToken(String token);

  Future<void> saveZaloRefreshToken(String token);

  Future<bool> saveIsDarkMode({required bool isDarkMode});

  Future<bool> saveDeviceToken(String token);

  Future<void> clearCurrentUserData();

  Future<bool> saveSubUSer(String subUser);

  Future<bool> saveCurrentUser(String user);
}
