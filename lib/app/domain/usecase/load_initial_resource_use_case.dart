import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:edtech/core/infrastructure/domain/usecase/sync/base_sync_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'load_initial_resource_use_case.freezed.dart';

@Injectable()
class LoadInitialResourceUseCase extends BaseSyncUseCase<
    LoadInitialResourceInput, LoadInitialResourceOutput> {
  const LoadInitialResourceUseCase();

  @protected
  @override
  LoadInitialResourceOutput buildUseCase(LoadInitialResourceInput input) {
    return const LoadInitialResourceOutput();
  }
}

@freezed
class LoadInitialResourceInput extends BaseInput
    with _$LoadInitialResourceInput {
  const factory LoadInitialResourceInput() = _LoadInitialResourceInput;
  const LoadInitialResourceInput._();
}

@freezed
class LoadInitialResourceOutput extends BaseOutput
    with _$LoadInitialResourceOutput {
  const factory LoadInitialResourceOutput() = _LoadInitialResourceOutput;
  const LoadInitialResourceOutput._();
}
