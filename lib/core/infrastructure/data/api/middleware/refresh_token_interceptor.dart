// import 'dart:collection';
// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';

// import '../../../../../shared.dart';

// @Injectable()
// class RefreshTokenInterceptor extends BaseInterceptor {
//   RefreshTokenInterceptor(
//     this.appPreferences,
//     this.refreshTokenService,
//     this._noneAuthAppServerApiClient,
//   );

//   final AppPreferences appPreferences;
//   final RefreshTokenApiService refreshTokenService;
//   final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;

//   var _isRefreshing = false;
//   final _queue = Queue<(RequestOptions, ErrorInterceptorHandler)>();

//   @override
//   int get priority => BaseInterceptor.refreshTokenPriority;

//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     if (err.response?.statusCode == HttpStatus.unauthorized) {
//       final options = err.response!.requestOptions;
//       _onExpiredToken(options: options, handler: handler);
//     } else {
//       handler.next(err);
//     }
//   }

//   void _putAccessToken({
//     required Map<String, dynamic> headers,
//     required String accessToken,
//   }) {
//     headers[ServerRequestResponseConstants.basicAuthorization] = 
//'${ServerRequestResponseConstants.bearer} $accessToken';
//   }

//   Future<void> _onExpiredToken({
//     required RequestOptions options,
//     required ErrorInterceptorHandler handler,
//   }) async {
//     _queue.addLast((options, handler));
//     if (!_isRefreshing) {
//       _isRefreshing = true;
//       try {
//         final newToken = await _refreshToken();
//         await _onRefreshTokenSuccess(newToken);
//       } catch (e) {
//         _onRefreshTokenError(e);
//       } finally {
//         _isRefreshing = false;
//         _queue.clear();
//       }
//     }
//   }

//   Future<String> _refreshToken() async {
//     _isRefreshing = true;
//     final refreshToken = await appPreferences.refreshToken;
//     final refreshTokenResponse = 
//await refreshTokenService.refreshToken(refreshToken);
//     await Future.wait(
//       [
//         appPreferences.saveAccessToken(refreshTokenResponse.data ?? ''),
//       ],
//     );

//     return refreshTokenResponse.data ?? '';
//   }

//   Future<void> _onRefreshTokenSuccess(String newToken) async {
//     await Future.wait(_queue.map(
//       (requestInfo) => _requestWithNewToken(
//         options: requestInfo.$1,
//         handler: requestInfo.$2,
//         newAccessToken: newToken,
//       ),
//     ));
//   }

//   void _onRefreshTokenError(Object? error) {
//     _queue.forEach((element) {
//       final options = element.$1;
//       final handler = element.$2;
//       handler.next(DioException(requestOptions: options, error: error));
//     });
//   }

//   Future<void> _requestWithNewToken({
//     required RequestOptions options,
//     required ErrorInterceptorHandler handler,
//     required String newAccessToken,
//   }) async {
//     _putAccessToken(headers: options.headers, accessToken: newAccessToken);

//     try {
//       final response = await _noneAuthAppServerApiClient.dio.fetch(options);
//       handler.resolve(response);
//     } catch (e) {
//       handler.next(DioException(requestOptions: options, error: e));
//     }
//   }
// }
