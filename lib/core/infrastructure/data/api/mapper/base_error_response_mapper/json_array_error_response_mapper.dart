import 'package:edtech/core/exception/remote/server_error.dart';
import 'package:edtech/core/exception/remote/server_error_detail.dart';
import 'package:edtech/core/infrastructure/data/api/mapper/base_error_response_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class JsonArrayErrorResponseMapper
    extends BaseErrorResponseMapper<List<Map<String, dynamic>>> {
  @override
  ServerError mapToServerError(List<Map<String, dynamic>>? errorResponse) {
    return ServerError(
      errors: errorResponse
              ?.map((jsonObject) => ServerErrorDetail(
                    serverStatusCode: jsonObject['code'] as int?,
                    message: jsonObject['message'] as String?,
                  ),)
              .toList(growable: false) ??
          [],
    );
  }
}
