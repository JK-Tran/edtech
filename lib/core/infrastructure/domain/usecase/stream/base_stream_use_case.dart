import 'package:edtech/core/helper/stream/stream_logger.dart';
import 'package:edtech/core/infrastructure/domain/usecase/base_use_case.dart';
import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';


abstract class BaseStreamUseCase<Input extends BaseInput, Output>
    extends BaseUseCase<Input, Stream<Output>> {
  const BaseStreamUseCase();

  Stream<Output> execute(Input input) {
    return buildUseCase(input).log(runtimeType.toString());
  }
}
