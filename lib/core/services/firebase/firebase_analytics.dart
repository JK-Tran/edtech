import 'dart:developer' as dev;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';

class AntoreeAnalytics {
  const AntoreeAnalytics._();

  /// Singleton instance of AntoreeAnalytics Helper
  static AntoreeAnalytics? _instance;

  static FirebaseAnalytics? _analytics;

  static FirebaseAnalyticsObserver? _observer;

  /// Get instance of this class
  static AntoreeAnalytics get instance =>
      _instance ??= const AntoreeAnalytics._();

  FirebaseAnalyticsObserver get observer => _observer!;

  static Future<void> initialize() async {
    _analytics ??= FirebaseAnalytics.instance;
    _observer ??= FirebaseAnalyticsObserver(analytics: _analytics!);
  }

  Future<void> setUserId({
    String? id,
    AnalyticsCallOptions? callOptions,
  }) async {
    await _analytics?.setUserId(id: id, callOptions: callOptions);
    if (kDebugMode) {
      dev.log(
        name: '$runtimeType',
        '\x1B[35m[AntoreeAnalytics] Handling set user Id: $id',
      );
    }
  }

  Future<void> setUserProperty({
    required String name,
    required String? value,
    AnalyticsCallOptions? callOptions,
  }) async {
    await _analytics?.setUserProperty(
      name: name,
      value: value,
      callOptions: callOptions,
    );
    if (kDebugMode) {
      dev.log(
        name: '$runtimeType',
        '\x1B[35m[AntoreeAnalytics] Handling set user property: $name: $value',
      );
    }
  }

  Future<void> logEvent({
    required String name,
    Map<String, Object?>? parameters,
    AnalyticsCallOptions? callOptions,
  }) async {
    await _analytics?.logEvent(
      name: name,
      callOptions: callOptions,
      // parameters: parameters,
    );
    if (kDebugMode) {
      dev.log(
        name: '$runtimeType',
        '\x1B[35m[AntoreeAnalytics] Handling tracking event $name: $parameters',
      );
    }
  }
}
