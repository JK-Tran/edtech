import 'package:edtech/app/features/auth/data/models/role_data.dart';
import 'package:edtech/core/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/user.dart';

@Injectable()
class RoleDataMapper extends BaseDataMapper<RoleData, Role>
    with DataMapperMixin {
  RoleDataMapper();

  @override
  Role mapToEntity(RoleData? data) {
    return Role(
      id: data?.id ?? -1,
      name: data?.name ?? '',
    );
  }

  @override
  RoleData mapToData(Role entity) {
    return RoleData(
      id: entity.id,
      name: entity.name,
    );
  }
}
