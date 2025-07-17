import 'package:dio/dio.dart';
import 'package:edtech/core/constants/url_constants.dart';
import 'package:edtech/core/infrastructure/data/api/client/base/dio_builder.dart';
import 'package:edtech/core/infrastructure/data/api/client/base/rest_api_client.dart';
import 'package:edtech/core/infrastructure/data/api/middleware/header_interceptor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class NoneAuthAppServerApiClient extends RestApiClient {
  NoneAuthAppServerApiClient(HeaderInterceptor headerInterceptor)
      : super(
          dio: DioBuilder.createDio(
            options: BaseOptions(baseUrl: UrlConstants.appApiBaseUrl),
            interceptors: [
              headerInterceptor,
            ],
          ),
        );
}
