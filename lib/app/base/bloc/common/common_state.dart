import 'package:edtech/app/base/bloc/base_bloc_state.dart';
import 'package:edtech/core/exception/base/app_exception_wrapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_state.freezed.dart';

@freezed
class CommonState extends BaseBlocState with _$CommonState {
  const factory CommonState({
    AppExceptionWrapper? appExceptionWrapper,
    @Default(0) int loadingCount,
    @Default(false) bool isLoading,
  }) = _CommonState;
}
