import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:edtech/app/data/mapper/language_code_data_mapper.dart';
import 'package:edtech/app/domain/repository/repository.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:edtech/core/services/local_storage/app_preferences.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Repository)
class RepositoryImpl implements Repository {
  RepositoryImpl(
    this._appPreferences,
    this._languageCodeDataMapper,
  );

  final AppPreferences _appPreferences;

  final LanguageCodeDataMapper _languageCodeDataMapper;

  @override
  bool get isFirstLogin => _appPreferences.isFirstLogin;

  @override
  bool get isFirstLaunchApp => _appPreferences.isFirstLaunchApp;

  @override
  Stream<bool> get onConnectivityChanged => Connectivity()
      .onConnectivityChanged
      .map((event) => !event.contains(ConnectivityResult.none));

  @override
  bool get isDarkMode => _appPreferences.isDarkMode;

  @override
  LanguageCode get languageCode =>
      _languageCodeDataMapper.mapToEntity(_appPreferences.languageCode);

  @override
  Future<bool> saveIsFirstLogin({required bool isFirstLogin}) =>
      _appPreferences.saveIsFirstLogin(isFirstLogin: isFirstLogin);

  @override
  Future<bool> saveIsFirstLaunchApp({required bool isFirstLaunchApp}) =>
      _appPreferences.saveIsFirsLaunchApp(isFirstLaunchApp: isFirstLaunchApp);

  @override
  Future<bool> saveDeviceToken(String deviceToken) =>
      _appPreferences.saveDeviceToken(deviceToken);

  @override
  Future<bool> saveLanguageCode(LanguageCode languageCode) =>
      _appPreferences.saveLanguageCode(
        languageCode: _languageCodeDataMapper.mapToData(languageCode),
      );

  @override
  Future<bool> saveIsDarkMode({required bool isDarkMode}) =>
      _appPreferences.saveIsDarkMode(isDarkMode: isDarkMode);
}
