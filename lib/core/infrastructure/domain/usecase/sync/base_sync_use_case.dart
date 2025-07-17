import 'package:edtech/core/config/log_config.dart';
import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/exception/uncaught/app_uncaught_exception.dart';
import 'package:edtech/core/infrastructure/domain/usecase/base_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';


abstract class BaseSyncUseCase<Input extends BaseInput,
    Output extends BaseOutput> extends BaseUseCase<Input, Output> {
  const BaseSyncUseCase();

  Output execute(Input input) {
    try {
      if (LogConfig.enableLogUseCaseInput) {
        logD('SyncUseCase Input: $input');
      }
      final output = buildUseCase(input);
      if (LogConfig.enableLogUseCaseOutput) {
        logD('SyncUseCase Output: $output');
      }

      return output;
    } catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        logE('SyncUseCase Error: $e');
      }

      throw e is AppException ? e : AppUncaughtException(e);
    }
  }
}
