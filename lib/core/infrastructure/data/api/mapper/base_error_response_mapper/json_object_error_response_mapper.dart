import 'package:edtech/core/exception/remote/server_error.dart';
import 'package:edtech/core/exception/remote/server_error_detail.dart';
import 'package:edtech/core/infrastructure/data/api/mapper/base_error_response_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class JsonObjectErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? errorResponse) {
    if (errorResponse == null) {
      return const ServerError();
    }

    if (errorResponse['errors'] is List) {
      final errors = errorResponse['errors'] as List<dynamic>;
      String? generalMessage;

      if (errors.isNotEmpty && errors.first is Map<String, dynamic>) {
        generalMessage =
            (errors.first as Map<String, dynamic>)['message'] as String?;
      }

      return ServerError(
        errors: errors
            .map(
              (jsonObject) => ServerErrorDetail(
                message:
                    (jsonObject as Map<String, dynamic>)['message'] as String?,
              ),
            )
            .toList(growable: false),
        generalMessage: generalMessage,
      );
    }

    return ServerError(
      generalServerStatusCode: errorResponse['_status'] as int?,
      generalServerErrorId: errorResponse['error_code'] as String?,
      generalMessage:
          (errorResponse['_messages'] as List<dynamic>?)?.first as String?,
    );
  }
}
