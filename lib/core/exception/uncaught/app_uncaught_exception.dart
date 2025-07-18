import 'package:edtech/core/exception/base/app_exception.dart';

class AppUncaughtException extends AppException {
  const AppUncaughtException(this.rootError) : super(AppExceptionType.uncaught);

  final Object? rootError;

  @override
  String toString() {
    return 'rootError: $rootError';
  }
}
