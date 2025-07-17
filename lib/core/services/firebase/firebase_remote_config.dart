import 'dart:developer' as dev;

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

class AntoreeRemoteConfig {
  const AntoreeRemoteConfig._();

  /// Singleton instance of AntoreeRemoteConfig Helper
  static AntoreeRemoteConfig? _instance;

  static FirebaseRemoteConfig? _remoteConfig;

  /// Get instance of this class
  static AntoreeRemoteConfig get instance =>
      _instance ??= const AntoreeRemoteConfig._();

  static Future<void> initialize([
    Map<String, dynamic> defaultParameters = const <String, dynamic>{},
  ]) async {
    try {
      _remoteConfig ??= FirebaseRemoteConfig.instance;

      await _remoteConfig!.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(minutes: 30),
      ));
      await _remoteConfig!.setDefaults(defaultParameters);
      RemoteConfigValue(null, ValueSource.valueStatic);

      await _remoteConfig!.fetchAndActivate();
    } on Exception catch (e) {
      if (kDebugMode) {
        dev.log('\x1B[35m$e');
      }
    }
  }

  /// Fetch
  static Future<void> fetch() async => _remoteConfig!.fetch();

  /// Activate
  static Future<void> activate() async => _remoteConfig!.activate();

  /// Returns a Map of all Remote Config parameters.
  Map<String, RemoteConfigValue> getAll() {
    if (kDebugMode) {
      dev.log(name: '$runtimeType', '\x1B[35mGet all Remote Config parameters');
    }

    return _remoteConfig!.getAll();
  }

  /// Gets the value for a given key as a bool.
  bool getBool(String key) {
    final bool value = _remoteConfig!.getBool(key);
    _logValueConfig(key: key, value: value);

    return value;
  }

  /// Gets the value for a given key as an int.
  int getInt(String key) {
    final int value = _remoteConfig!.getInt(key);
    _logValueConfig(key: key, value: value);

    return value;
  }

  /// Gets the value for a given key as a double.
  double getDouble(String key) {
    final double value = _remoteConfig!.getDouble(key);
    _logValueConfig(key: key, value: value);

    return value;
  }

  /// Gets the value for a given key as a String.
  String getString(String key) {
    final String value = _remoteConfig!.getString(key);
    _logValueConfig(key: key, value: value);

    return value;
  }

  /// Gets the [RemoteConfigValue] for a given key.
  RemoteConfigValue getValue(String key) {
    final RemoteConfigValue value = _remoteConfig!.getValue(key);
    _logValueConfig(key: key, value: value);

    return value;
  }

  void _logValueConfig({required String key, required Object value}) {
    if (kDebugMode) {
      dev.log(
        name: '$runtimeType',
        '\x1B[35mKEY: $key => VALUE: $value => TYPE: ${value.runtimeType}',
      );
    }
  }
}
