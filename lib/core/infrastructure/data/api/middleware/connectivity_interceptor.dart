import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:edtech/core/exception/remote/remote_exception.dart';
import 'package:edtech/core/infrastructure/data/api/middleware/base_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@Injectable()
class ConnectivityInterceptor extends BaseInterceptor {
  ConnectivityInterceptor(this._internetConnectionChecker);

  final InternetConnectionChecker _internetConnectionChecker;

  @override
  int get priority => BaseInterceptor.connectivityPriority;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      final result = await _internetConnectionChecker.hasConnection;
      if (!result) {
        return handler.reject(
          DioException(
            requestOptions: options,
            error: const RemoteException(kind: RemoteExceptionKind.noInternet),
          ),
        );
      }
      return super.onRequest(options, handler);
    } else {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: const RemoteException(kind: RemoteExceptionKind.noInternet),
        ),
      );
    }
  }
}
