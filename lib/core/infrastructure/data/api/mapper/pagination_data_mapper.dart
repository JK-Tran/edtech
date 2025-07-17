import 'package:edtech/core/infrastructure/data/api/model/pagination_data.dart';
import 'package:edtech/core/infrastructure/data/base/base_data_mapper.dart';
import 'package:edtech/core/infrastructure/domain/entity/pagination.dart';
import 'package:injectable/injectable.dart';


@Injectable()
class PaginationDataMapper extends BaseDataMapper<PaginationData, Pagination>
    with DataMapperMixin {
  PaginationDataMapper();

  @override
  Pagination mapToEntity(PaginationData? data) {
    return const Pagination();
  }

  @override
  PaginationData mapToData(Pagination entity) {
    return const PaginationData();
  }
}
