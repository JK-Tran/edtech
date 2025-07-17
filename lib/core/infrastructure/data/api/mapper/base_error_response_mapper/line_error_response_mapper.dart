import 'package:edtech/core/exception/remote/server_error.dart';
import 'package:edtech/core/infrastructure/data/api/mapper/base_error_response_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LineErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? errorResponse) {
    return ServerError(
        generalMessage: errorResponse?['error_description'] as String?,);
  }
}
