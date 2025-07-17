import 'package:edtech/core/constants/duration_constants.dart';
import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/exception/base/app_exception_wrapper.dart';
import 'package:edtech/core/exception/remote/remote_exception.dart';
import 'package:edtech/core/helper/function/function.dart';
import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/navigation/app_popup_info.dart';
import 'package:flutter/material.dart';

class ExceptionHandler {
  const ExceptionHandler({
    required this.navigator,
    required this.listener,
  });

  final AppNavigator navigator;
  final ExceptionHandlerListener listener;

  Future<void> handleException(
    AppExceptionWrapper appExceptionWrapper,
    String commonExceptionMessage,
    String commonExceptionImage,
  ) async {
    final message =
        appExceptionWrapper.overrideMessage ?? commonExceptionMessage;
    final image = appExceptionWrapper.overrideImage ?? commonExceptionImage;

    switch (appExceptionWrapper.appException.appExceptionType) {
      case AppExceptionType.remote:
        final exception = appExceptionWrapper.appException as RemoteException;
        switch (exception.kind) {
          case RemoteExceptionKind.sessionExpired:
            await _showRequiredLoginDialog(
              image: image,
              message: message,
              onPressed: Func0(() {
                navigator.pop(true);
              }),
            );
            break;
          case RemoteExceptionKind.refreshTokenFailed:
            await _showErrorDialog(
              isRefreshTokenFailed: true,
              image: image,
              message: message,
              onPressed: Func0(() {
                navigator.pop(true);
              }),
            );
            break;
          case RemoteExceptionKind.noInternet:
          case RemoteExceptionKind.timeout:
            await _showErrorDialogWithRetry(
              message: message,
              onRetryPressed: Func0(() async {
                navigator.pop(true);
                await appExceptionWrapper.doOnRetry?.call();
              }),
            );
            break;
          // ignore: no_default_cases
          default:
            await _showErrorDialog(
              message: message,
              image: image,
            );
            break;
        }
        break;
      case AppExceptionType.parse:
        return _showErrorSnackBar(message: message);
      case AppExceptionType.remoteConfig:
        return _showErrorSnackBar(message: message);
      case AppExceptionType.uncaught:
        return;
      case AppExceptionType.validation:
        await _showErrorDialog(
          message: message,
          image: image,
        );
        break;
    }
  }

  void _showErrorSnackBar({
    required String message,
    Duration duration = DurationConstants.defaultErrorVisibleDuration,
  }) {
    navigator.showErrorSnackBar(message, duration: duration);
  }

  Future<void> _showRequiredLoginDialog({
    required String image,
    required String message,
    Func0<void>? onPressed,
    bool isRefreshTokenFailed = false,
  }) async {
    await navigator
        .showAppDialog(
      const AppPopupInfo.requiredLoginDialog(),
      barrierDismissible: false,
    )
        .then((value) {
      if (isRefreshTokenFailed) {
        listener.onRefreshTokenFailed();
      }
    });
  }

  Future<void> _showErrorDialog({
    required String image,
    required String message,
    Func0<void>? onPressed,
    bool isRefreshTokenFailed = false,
  }) async {
    await navigator
        .showAppDialog(AppPopupInfo.alertDialog(
      message: message,
      asset: Image.asset(image),
      onPressed: onPressed,
    ))
        .then((value) {
      if (isRefreshTokenFailed) {
        listener.onRefreshTokenFailed();
      }
    });
  }

  Future<void> _showErrorDialogWithRetry({
    required String message,
    required Func0<void>? onRetryPressed,
  }) async {
    await navigator.showAppDialog(AppPopupInfo.errorWithRetryDialog(
      message: message,
      onRetryPressed: onRetryPressed,
    ));
  }
}

abstract class ExceptionHandlerListener {
  void onRefreshTokenFailed();
}
