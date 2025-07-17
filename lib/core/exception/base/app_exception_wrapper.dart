import 'dart:async';

import 'package:edtech/core/exception/base/app_exception.dart';

class AppExceptionWrapper {
  AppExceptionWrapper({
    required this.appException,
    this.exceptionCompleter,
    this.doOnRetry,
    this.overrideMessage,
    this.overrideImage,
  });

  final AppException appException;
  final Completer<void>? exceptionCompleter;
  final Future<void> Function()? doOnRetry;
  final String? overrideMessage;
  final String? overrideImage;

  @override
  String toString() {
    return 'AppExceptionWrapper(appException: $appException'
        'exceptionCompleter: $exceptionCompleter'
        'doOnRetry: $doOnRetry, overrideMessage: $overrideMessage)';
  }
}
