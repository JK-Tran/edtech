import 'package:edtech/core/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:edtech/core/infrastructure/data/api/model/data_response.dart';
import 'package:edtech/core/model/typedef.dart';


class DataJsonArrayResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, DataListResponse<T>> {
  @override
  // ignore: avoid-dynamic
  DataListResponse<T>? mapToDataModel({
    required dynamic response,
    Decoder<T>? decoder,
  }) {
    return decoder != null && response is Map<String, dynamic>
        ? DataListResponse.fromJson(response, (json) => decoder(json))
        : null;
  }
}
