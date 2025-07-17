import 'package:dartx/dartx.dart';
import 'package:edtech/core/infrastructure/data/base/base_data_mapper.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LanguageCodeDataMapper extends BaseDataMapper<String, LanguageCode>
    with DataMapperMixin {
  @override
  LanguageCode mapToEntity(String? data) =>
      LanguageCode.values.firstOrNullWhere(
        (element) => element.serverValue == data,
      ) ??
      LanguageCode.defaultValue;

  @override
  String mapToData(LanguageCode entity) => entity.serverValue;
}
