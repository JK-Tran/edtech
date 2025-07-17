import 'package:edtech/app/domain/repository/repository.dart';
import 'package:edtech/core/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'save_language_code_use_case.freezed.dart';

@Injectable()
class SaveLanguageCodeUseCase
    extends BaseFutureUseCase<SaveLanguageCodeInput, SaveLanguageCodeOutput> {
  const SaveLanguageCodeUseCase(this._repository);

  final Repository _repository;

  @protected
  @override
  Future<SaveLanguageCodeOutput> buildUseCase(
    SaveLanguageCodeInput input,
  ) async {
    await _repository.saveLanguageCode(input.languageCode);

    return const SaveLanguageCodeOutput();
  }
}

@freezed
class SaveLanguageCodeInput extends BaseInput with _$SaveLanguageCodeInput {
  const factory SaveLanguageCodeInput({
    required LanguageCode languageCode,
  }) = _SaveLanguageCodeInput;
  const SaveLanguageCodeInput._();
}

@freezed
class SaveLanguageCodeOutput extends BaseOutput with _$SaveLanguageCodeOutput {
  const factory SaveLanguageCodeOutput() = _SaveLanguageCodeOutput;
  const SaveLanguageCodeOutput._();
}
