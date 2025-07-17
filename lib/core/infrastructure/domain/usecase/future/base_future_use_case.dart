import 'package:edtech/core/config/log_config.dart';
import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/exception/uncaught/app_uncaught_exception.dart';
import 'package:edtech/core/infrastructure/domain/usecase/base_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_output.dart';


abstract class BaseFutureUseCase<Input extends BaseInput,
    Output extends BaseOutput> extends BaseUseCase<Input, Future<Output>> {
  const BaseFutureUseCase();

  Future<Output> execute(Input input) async {
    try {
      if (LogConfig.enableLogUseCaseInput) {
        logD('FutureUseCase Input: $input');
      }
      final output = await buildUseCase(input);
      if (LogConfig.enableLogUseCaseOutput) {
        logD('FutureUseCase Output: $output');
      }

      return output;
    } catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        logE('FutureUseCase Error: $e');
      }

      throw e is AppException ? e : AppUncaughtException(e);
    }
  }
}
