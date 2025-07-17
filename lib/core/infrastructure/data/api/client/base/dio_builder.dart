import 'package:dartx/dartx.dart';
import 'package:dio/dio.dart';
import 'package:edtech/core/constants/server/server_timeout_constants.dart';
import 'package:edtech/core/constants/url_constants.dart';
import 'package:edtech/core/infrastructure/data/api/client/base/api_client_default_settings.dart';
import 'package:edtech/core/infrastructure/data/api/middleware/base_interceptor.dart';

class DioBuilder {
  const DioBuilder._();

  static Dio createDio({
    BaseOptions? options,
    List<Interceptor> interceptors = const [],
  }) {
    final dio = Dio(
      BaseOptions(
        connectTimeout:
            options?.connectTimeout ?? ServerTimeoutConstants.connectTimeout,
        receiveTimeout:
            options?.receiveTimeout ?? ServerTimeoutConstants.receiveTimeout,
        sendTimeout: options?.sendTimeout ?? ServerTimeoutConstants.sendTimeout,
        baseUrl: options?.baseUrl ?? UrlConstants.appApiBaseUrl,
      ),
    );

    final sortedInterceptors = [
      ...ApiClientDefaultSetting.requiredInterceptors(dio),
      ...interceptors,
    ].sortedByDescending((element) {
      return element is BaseInterceptor ? element.priority : -1;
    });

    dio.interceptors.addAll(sortedInterceptors);

    return dio;
  }
}
