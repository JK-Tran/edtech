import 'dart:io';

import 'package:dio/dio.dart';
import 'package:edtech/core/constants/server/server_request_response_constants.dart';
import 'package:edtech/core/helper/app_info.dart';
import 'package:edtech/core/infrastructure/data/api/middleware/base_interceptor.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class HeaderInterceptor extends BaseInterceptor {
  HeaderInterceptor(this._appInfo);

  @override
  int get priority => BaseInterceptor.headerPriority;

  Map<String, dynamic> headers = {
    'accept': 'application/json, text/plain, */*',
  };
  final AppInfo _appInfo;
  // @override
  // int get priority => BaseInterceptor.headerPriority;

  // Map<String, dynamic> get headers => _headers;

  // set headers(Map<String, dynamic> headers) {
  //   _headers = headers;
  // }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll(headers);
    options.headers.addAll(_userAgentClientHeader());
    options.headers.addAll(_getAppInfoHeaders());

    handler.next(options);
  }

  Map<String, dynamic> _userAgentClientHeader() {
    return {
      ServerRequestResponseConstants.userAgentKey:
          '${Platform.operatingSystem} - ${_appInfo.versionName}',
    };
  }

  Map<String, dynamic> _getAppInfoHeaders() {
    return {
      'is-app': '1',
      ServerRequestResponseConstants.currentVersionKey: _appInfo.versionName,
      ServerRequestResponseConstants.platformKey:
          Platform.isAndroid ? 'android' : 'ios',
    };
  }
}
