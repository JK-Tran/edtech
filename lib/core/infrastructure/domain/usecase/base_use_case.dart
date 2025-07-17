import 'package:edtech/core/infrastructure/domain/usecase/io/base_input.dart';
import 'package:edtech/core/mixin/log_mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class BaseUseCase<Input extends BaseInput, Output> with LogMixin {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}
