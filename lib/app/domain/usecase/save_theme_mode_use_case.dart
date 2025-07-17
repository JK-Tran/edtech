import 'package:edtech/app/domain/repository/repository.dart';
import 'package:edtech/core/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'save_theme_mode_use_case.freezed.dart';

@Injectable()
class SaveThemeModeUseCase
    extends BaseFutureUseCase<SaveThemeModeInput, SaveThemeModeOutput> {
  SaveThemeModeUseCase(this._repository);

  final Repository _repository;

  @protected
  @override
  Future<SaveThemeModeOutput> buildUseCase(SaveThemeModeInput input) async {
    await _repository.saveIsDarkMode(isDarkMode: input.isDarkMode);

    return const SaveThemeModeOutput();
  }
}

@freezed
class SaveThemeModeInput extends BaseInput with _$SaveThemeModeInput {
  const factory SaveThemeModeInput({
    required bool isDarkMode,
  }) = _SaveThemeModeInput;
  const SaveThemeModeInput._();
}

@freezed
class SaveThemeModeOutput extends BaseOutput with _$SaveThemeModeOutput {
  const factory SaveThemeModeOutput() = _SaveThemeModeOutput;
  const SaveThemeModeOutput._();
}
