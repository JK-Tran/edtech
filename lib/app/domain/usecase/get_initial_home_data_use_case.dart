import 'package:edtech/app/domain/repository/repository.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';
import 'package:edtech/core/infrastructure/domain/usecase/sync/base_sync_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_initial_home_data_use_case.freezed.dart';

@Injectable()
class GetInitialHomeDataUseCase
    extends BaseSyncUseCase<GetInitialHomeDataInput, GetInitialHomeDataOutput> {
  GetInitialHomeDataUseCase(this._repository);

  final Repository _repository;

  @protected
  @override
  GetInitialHomeDataOutput buildUseCase(
    GetInitialHomeDataInput input,
  ) {
    return GetInitialHomeDataOutput(
      isFirstLaunchApp: _repository.isFirstLaunchApp,
    );
  }
}

@freezed
class GetInitialHomeDataInput extends BaseInput with _$GetInitialHomeDataInput {
  const factory GetInitialHomeDataInput() = _GetInitialHomeDataInput;
  const GetInitialHomeDataInput._();
}

@freezed
class GetInitialHomeDataOutput extends BaseOutput
    with _$GetInitialHomeDataOutput {
  const factory GetInitialHomeDataOutput({
    @Default(true) bool isFirstLaunchApp,
  }) = _GetInitialHomeDataOutput;
  const GetInitialHomeDataOutput._();
}
