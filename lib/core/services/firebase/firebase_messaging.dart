import 'dart:developer' as dev;
import 'dart:isolate';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import '../../utils/log_utils.dart';

/// Set a message handler function which is called when the app is in the
/// background or terminated.
Future<void> _onBackgroundMessage(RemoteMessage message) async {
  await Firebase.initializeApp();
  final SendPort? send =
      IsolateNameServer.lookupPortByName('backgroundNotification');
  send?.send(true);

  if (kDebugMode) {
    dev.log(
      name: 'AntoreeMessaging',
      '\x1B[35mHandling background message: ${message.data}',
    );
  }
}

class AntoreeMessaging {
  const AntoreeMessaging._();

  /// Singleton instance of AntoreeMessaging Helper
  static AntoreeMessaging? _instance;

  static FirebaseMessaging? _messaging;

  /// Get instance of this class
  static AntoreeMessaging get instance =>
      _instance ??= const AntoreeMessaging._();

  /// Returns a Stream that is called when an incoming FCM payload is received
  /// whilst the Flutter instance is in the foreground.
  static Stream<RemoteMessage> get onMessage {
    final Stream<RemoteMessage> stream = FirebaseMessaging.onMessage;
    stream.asBroadcastStream().listen((RemoteMessage message) {
      if (kDebugMode) {
        dev.log(
          name: 'AntoreeMessaging',
          '\x1B[35m[AntoreeMessaging] Handling foreground message:\nNotification${Log.prettyJson(message.notification?.toMap() ?? {})},\nData: ${Log.prettyJson(message.data)}',
        );
      }
    });

    return stream;
  }

  /// Returns a [Stream] that is called when a user presses a notification message displayed via FCM.
  static Stream<RemoteMessage> get onMessageOpenedApp {
    final Stream<RemoteMessage> stream = FirebaseMessaging.onMessageOpenedApp;
    stream.asBroadcastStream().listen((RemoteMessage message) {
      if (kDebugMode) {
        dev.log(
          name: 'AntoreeMessaging',
          '\x1B[35m[AntoreeMessaging] Handling message open app: ${Log.prettyJson(message.data)}',
        );
      }
    });

    return stream;
  }

  /// Returns a Stream that is called when an incoming FCM payload is received
  /// whilst the Flutter instance is in the foreground.
  static Stream<String> get onRefreshToken {
    final Stream<String> stream = _messaging!.onTokenRefresh;
    stream.asBroadcastStream().listen((String token) {
      if (kDebugMode) {
        dev.log(
          name: 'AntoreeMessaging',
          '\x1B[35m[AntoreeMessaging] Handling refresh fcm token: $token',
        );
      }
    });

    return stream;
  }

  /// If you're going to use other Firebase services in the background, such as
  /// Firestore, make sure you call `initializeApp` before using other Firebase services.
  /// 1. It must not be an anonymous function.
  /// 2. It must be a top-level function (e.g. not a class method which requires initialization).
  static Future<void> initialize() async {
    _messaging ??= FirebaseMessaging.instance;
    FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);
  }

  /// Prompts the user for notification permissions.
  Future<NotificationSettings> requestPermission() async {
    final NotificationSettings settings = await _messaging!.requestPermission(
      announcement: true,
      carPlay: true,
      criticalAlert: true,
    );
    await _messaging!.setForegroundNotificationPresentationOptions(
      sound: true,
      badge: true,
    );

    if (kDebugMode) {
      dev.log(
        name: '$runtimeType',
        '\x1B[35m[AntoreeMessaging] User granted permission: ${settings.authorizationStatus}',
      );
    }

    return settings;
  }

  /// Returns the default FCM token for this device.
  Future<String?> getToken() async {
    final String? token = await _messaging!.getToken();
    if (kDebugMode) {
      dev.log(
        name: '$runtimeType',
        '\x1B[35m[AntoreeMessaging] User get FCM token: $token',
      );
    }

    return token;
  }

  /// Removes access to an FCM token previously authorized.
  void deleteToken() {
    if (kDebugMode) {
      dev.log(
        name: '$runtimeType',
        '\x1B[35m[AntoreeMessaging] User delete FCM token',
      );
    }
    _messaging!.deleteToken();
  }

  /// This should be used to determine whether specific notification interaction
  /// should open the app with a specific purpose (e.g. opening a chat message,
  /// specific screen etc).
  Future<RemoteMessage?> getInitialMessage() async {
    final RemoteMessage? message = await _messaging!.getInitialMessage();
    if (kDebugMode) {
      dev.log(
        name: '$runtimeType',
        '\x1B[35m[AntoreeMessaging] Handling initial message: ${message != null ? Log.prettyJson(message.data) : message?.data}',
      );
    }

    return message;
  }
}
