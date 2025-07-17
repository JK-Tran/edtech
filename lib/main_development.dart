import 'dart:async';

import 'package:edtech/app/app.dart';
import 'package:edtech/app/config/app_config.dart';
import 'package:edtech/core/services/firebase/firebase_crashlytics.dart';
import 'package:edtech/core/utils/log_utils.dart';
import 'package:edtech/initializer/app_initializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() => runZonedGuarded(_runMyApp, _reportError);

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Preserve splash screen until app is ready
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  Log.d('=== [DEV] Splash main-development ===');

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  await AppInitializer(AppConfig.getInstance()).init();

  Log.d('=== [DEV] App initialized, runApp sẽ được gọi ===');
  runApp(const AntoreeApp());
}

void _reportError(Object error, StackTrace stackTrace) {
  Log.e(error, stackTrace: stackTrace, name: 'Uncaught exception');

  // report by Firebase Crashlytics here
  AntoreeCrashlytics.instance.recordError(error, stackTrace);
}
