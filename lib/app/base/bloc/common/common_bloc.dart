import 'dart:async';

import 'package:edtech/app/base/bloc/base_bloc.dart';
import 'package:edtech/app/base/bloc/common/common_event.dart';
import 'package:edtech/app/base/bloc/common/common_state.dart';
import 'package:edtech/app/features/auth/bloc/auth_bloc.dart';
import 'package:edtech/app/utils/cubit_ext.dart';
import 'package:edtech/core/utils/num_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CommonBloc extends BaseBloc<CommonEvent, CommonState> {
  //CommonBloc(this._clearCurrentUserDataUseCase)
  CommonBloc() : super(const CommonState()) {
    on<LoadingVisibilityEmitted>(
      _onLoadingVisibilityEmitted,
      transformer: log(),
    );

    on<ExceptionEmitted>(
      _onExceptionEmitted,
      transformer: log(),
    );

    on<ForceLogoutButtonPressed>(
      _onForceLogoutButtonPressed,
      transformer: log(),
    );
  }

  // final ClearCurrentUserDataUseCase _clearCurrentUserDataUseCase;

  FutureOr<void> _onLoadingVisibilityEmitted(
    LoadingVisibilityEmitted event,
    Emitter<CommonState> emit,
  ) {
    safeEmit(state.copyWith(
      isLoading: state.loadingCount == 0 && event.isLoading ||
          (state.loadingCount == 1 && !event.isLoading) ||
          state.loadingCount <= 0,
      loadingCount: event.isLoading
          ? state.loadingCount.plus(1)
          : state.loadingCount.minus(1),
    ));
  }

  FutureOr<void> _onExceptionEmitted(
    ExceptionEmitted event,
    Emitter<CommonState> emit,
  ) {
    safeEmit(state.copyWith(appExceptionWrapper: event.appExceptionWrapper));
  }

  FutureOr<void> _onForceLogoutButtonPressed(
    ForceLogoutButtonPressed event,
    Emitter<CommonState> emit,
  ) {
    return runBlocCatching(
      action: () async {
        // await _clearCurrentUserDataUseCase
        //     .execute(const ClearCurrentUserDataInput());

        authBloc.add(const AuthEvent.loggedOut());
      },
    );
  }
}
