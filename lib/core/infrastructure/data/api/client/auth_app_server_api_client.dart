import 'package:dio/dio.dart';
import 'package:edtech/core/constants/url_constants.dart';
import 'package:edtech/core/infrastructure/data/api/client/base/dio_builder.dart';
import 'package:edtech/core/infrastructure/data/api/client/base/rest_api_client.dart';
import 'package:edtech/core/infrastructure/data/api/middleware/access_token_interceptor.dart';
import 'package:edtech/core/infrastructure/data/api/middleware/header_interceptor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthAppServerApiClient extends RestApiClient {
  AuthAppServerApiClient(
    HeaderInterceptor headerInterceptor,
    AccessTokenInterceptor accessTokenInterceptor,
    // RefreshTokenInterceptor _refreshTokenInterceptor,
  ) : super(
          dio: DioBuilder.createDio(
            options: BaseOptions(baseUrl: UrlConstants.appApiBaseUrl),
            interceptors: [
              headerInterceptor,
              accessTokenInterceptor,
              // _refreshTokenInterceptor,
            ],
          ),
        );
}
