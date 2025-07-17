import 'package:edtech/app/domain/repository/repository.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:edtech/core/infrastructure/domain/usecase/sync/base_sync_use_case.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_app_setting_use_case.freezed.dart';

@Injectable()
class GetAppSettingUseCase extends BaseSyncUseCase<GetAppSettingUseCaseInput,
    GetAppSettingUseCaseOutput> {
  const GetAppSettingUseCase(this._repository);

  final Repository _repository;

  @protected
  @override
  GetAppSettingUseCaseOutput buildUseCase(GetAppSettingUseCaseInput input) {
    return GetAppSettingUseCaseOutput(
      isDarkMode: _repository.isDarkMode,
      languageCode: _repository.languageCode,
    );
  }
}

@freezed
class GetAppSettingUseCaseInput extends BaseInput
    with _$GetAppSettingUseCaseInput {
  const factory GetAppSettingUseCaseInput() = _GetAppSettingUseCaseInput;
  const GetAppSettingUseCaseInput._();
}

@freezed
class GetAppSettingUseCaseOutput extends BaseOutput
    with _$GetAppSettingUseCaseOutput {
  const factory GetAppSettingUseCaseOutput({
    @Default(false) bool isDarkMode,
    @Default(LanguageCode.vi) LanguageCode languageCode,
  }) = _GetAppSettingUseCaseOutput;

  const GetAppSettingUseCaseOutput._();
}
