import 'package:edtech/app/domain/repository/repository.dart';
import 'package:edtech/core/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'save_is_first_launch_app_use_case.freezed.dart';

@Injectable()
class SaveIsFirstLaunchAppUseCase extends BaseFutureUseCase<
    SaveIsFirstLaunchAppInput, SaveIsFirstLaunchAppOutput> {
  SaveIsFirstLaunchAppUseCase(this._repository);

  final Repository _repository;

  @protected
  @override
  Future<SaveIsFirstLaunchAppOutput> buildUseCase(
    SaveIsFirstLaunchAppInput input,
  ) async {
    await _repository.saveIsFirstLaunchApp(
      isFirstLaunchApp: input.isFirstLaunchApp,
    );

    return const SaveIsFirstLaunchAppOutput();
  }
}

@freezed
class SaveIsFirstLaunchAppInput extends BaseInput
    with _$SaveIsFirstLaunchAppInput {
  const factory SaveIsFirstLaunchAppInput({
    required bool isFirstLaunchApp,
  }) = _SaveIsFirstLaunchAppInput;
  const SaveIsFirstLaunchAppInput._();
}

@freezed
class SaveIsFirstLaunchAppOutput extends BaseOutput
    with _$SaveIsFirstLaunchAppOutput {
  const factory SaveIsFirstLaunchAppOutput() = _SaveIsFirstLaunchAppOutput;
  const SaveIsFirstLaunchAppOutput._();
}
