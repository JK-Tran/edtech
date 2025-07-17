import 'package:dio/dio.dart';
import 'package:edtech/core/constants/url_constants.dart';
import 'package:edtech/core/infrastructure/data/api/client/base/dio_builder.dart';
import 'package:edtech/core/infrastructure/data/api/client/base/rest_api_client.dart';
import 'package:edtech/core/infrastructure/data/api/middleware/access_token_interceptor.dart';
import 'package:edtech/core/infrastructure/data/api/middleware/header_interceptor.dart';
import 'package:injectable/injectable.dart';


@LazySingleton()
class RefreshTokenApiClient extends RestApiClient {
  RefreshTokenApiClient(
    HeaderInterceptor headerInterceptor,
    AccessTokenInterceptor accessTokenInterceptor,
  ) : super(
          dio: DioBuilder.createDio(
            options: BaseOptions(baseUrl: UrlConstants.appApiBaseUrl),
            interceptors: [
              headerInterceptor,
              accessTokenInterceptor,
            ],
          ),
        );
}
