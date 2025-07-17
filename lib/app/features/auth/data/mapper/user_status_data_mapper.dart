import 'package:dartx/dartx.dart';
import 'package:edtech/core/infrastructure/data/base/base_data_mapper.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UserStatusDataMapper extends BaseDataMapper<int, UserStatus>
    with DataMapperMixin {
  @override
  UserStatus mapToEntity(int? data) {
    return UserStatus.values
            .firstOrNullWhere((element) => element.serverValue == data) ??
        UserStatus.unknown;
  }

  @override
  int mapToData(UserStatus entity) {
    return entity.serverValue;
  }
}
