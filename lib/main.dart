import 'dart:async';

import 'package:edtech/app/app.dart';
import 'package:edtech/app/config/app_config.dart';
import 'package:edtech/core/services/firebase/firebase_crashlytics.dart';
import 'package:edtech/core/utils/log_utils.dart';
import 'package:edtech/initializer/app_initializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() => runZonedGuarded(_runMyApp, _reportError);

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );

  await AppInitializer(AppConfig.getInstance()).init();

  runApp(const AntoreeApp());
}

void _reportError(Object error, StackTrace stackTrace) {
  Log.e(error, stackTrace: stackTrace, name: 'Uncaught exception');
  AntoreeCrashlytics.instance.recordError(error, stackTrace);
}
