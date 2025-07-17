import 'package:edtech/core/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:edtech/core/model/typedef.dart';


class PlainResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, T> {
  @override
  T? mapToDataModel({
    required dynamic response,
    Decoder<T>? decoder,
  }) {
    assert(response != null, 'Response cannot be null');

    return response is T ? response : null;
  }
}
