import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class AntoreeCrashlytics {
  const AntoreeCrashlytics._();

  /// Singleton instance of AntoreeCrashlytics Helper
  static AntoreeCrashlytics? _instance;

  static FirebaseCrashlytics? _crashlytics;

  /// Get instance of this class
  static AntoreeCrashlytics get instance =>
      _instance ??= const AntoreeCrashlytics._();

  static Future<void> initialize() async {
    _crashlytics ??= FirebaseCrashlytics.instance;
    await _crashlytics!.setCrashlyticsCollectionEnabled(!kDebugMode);
  }

  Future<void> recordError(dynamic exception, StackTrace? stack) async {
    await _crashlytics!.recordError(exception, stack);
    FlutterError.onError = (errorDetails) {
      _crashlytics?.recordFlutterFatalError(errorDetails);
    };
    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      _crashlytics?.recordError(error, stack, fatal: true);
      return true;
    };
  }
}
