import 'package:dartx/dartx.dart';
import 'package:dio/io.dart';

import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/exception/remote/server_error.dart';

class RemoteException extends AppException {
  const RemoteException({
    required this.kind,
    this.httpErrorCode,
    this.serverError,
    this.rootException,
  }) : super(AppExceptionType.remote);

  final RemoteExceptionKind kind;
  final int? httpErrorCode;
  final ServerError? serverError;
  final Object? rootException;

  int get generalServerStatusCode =>
      serverError?.generalServerStatusCode ??
      serverError?.errors.firstOrNull?.serverStatusCode ??
      -1;

  String? get generalServerErrorId =>
      serverError?.generalServerErrorId ??
      serverError?.errors.firstOrNull?.serverErrorId;

  String? get generalServerMessage =>
      serverError?.generalMessage ?? serverError?.errors.firstOrNull?.message;

  @override
  String toString() {
    return '''
      RemoteException: {
            kind: $kind
            httpErrorCode: $httpErrorCode,
            serverError: $serverError,
            rootException: $rootException,
            generalServerMessage: $generalServerMessage,
            generalServerStatusCode: $generalServerStatusCode,
            generalServerErrorId: $generalServerErrorId,
            stackTrace: ${rootException is Error ? (rootException! as Error).stackTrace : ''}
      }''';
  }
}

enum RemoteExceptionKind {
  noInternet,

  /// host not found, cannot connect to host, SocketException
  network,

  /// server has defined response
  serverDefined,

  /// server has not defined response
  serverUndefined,

  /// Caused by an incorrect certificate as configured by [ValidateCertificate]
  badCertificate,

  /// error occurs when passing JSON
  decodeError,

  refreshTokenFailed,

  sessionExpired,

  timeout,

  cancellation,

  unknown,

  unauthorized,
}
