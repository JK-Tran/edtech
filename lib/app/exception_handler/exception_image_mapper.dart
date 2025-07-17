import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/exception/remote/remote_exception.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';

class ExceptionImageMapper {
  const ExceptionImageMapper();

  String map(AppException appException) {
    return switch (appException.appExceptionType) {
      AppExceptionType.remote => switch (
            (appException as RemoteException).kind) {
          RemoteExceptionKind.noInternet => Assets.illustration.noInternet.path,
          RemoteExceptionKind.network => Assets.illustration.noInternet.path,
          RemoteExceptionKind.serverDefined =>
            Assets.illustration.errorResponse.path,
          RemoteExceptionKind.serverUndefined =>
            Assets.illustration.errorResponse.path,
          RemoteExceptionKind.badCertificate =>
            Assets.illustration.errorResponse.path,
          RemoteExceptionKind.decodeError =>
            Assets.illustration.errorResponse.path,
          RemoteExceptionKind.refreshTokenFailed =>
            Assets.illustration.requestFail.path,
          RemoteExceptionKind.sessionExpired =>
            Assets.illustration.requestFail.path,
          RemoteExceptionKind.timeout => Assets.illustration.requestFail.path,
          RemoteExceptionKind.cancellation =>
            Assets.illustration.requestFail.path,
          RemoteExceptionKind.unknown => Assets.illustration.errorResponse.path,
          RemoteExceptionKind.unauthorized => Assets.illustration.banError.path,
        },
      AppExceptionType.parse => Assets.illustration.banError.path,
      AppExceptionType.remoteConfig => Assets.illustration.banError.path,
      AppExceptionType.uncaught => Assets.illustration.banError.path,
      AppExceptionType.validation => Assets.illustration.banError.path,
    };
  }
}
