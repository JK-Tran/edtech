import 'package:dartx/dartx.dart';
import 'package:edtech/core/infrastructure/data/base/base_data_mapper.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GenderDataMapper extends BaseDataMapper<int, Gender>
    with DataMapperMixin {
  @override
  Gender mapToEntity(int? data) {
    return Gender.values
            .firstOrNullWhere((element) => element.serverValue == data) ??
        Gender.unknown;
  }

  @override
  int mapToData(Gender entity) {
    return entity.serverValue;
  }
}
