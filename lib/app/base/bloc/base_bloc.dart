import 'dart:async';

import 'package:edtech/app/base/bloc/base_bloc_event.dart';
import 'package:edtech/app/base/bloc/base_bloc_state.dart';
import 'package:edtech/app/base/bloc/common/common_bloc.dart';
import 'package:edtech/app/base/bloc/common/common_event.dart';
import 'package:edtech/app/base/bloc/mixin/event_transformer_mixin.dart';
import 'package:edtech/app/bloc/app_bloc.dart';
import 'package:edtech/app/exception_handler/exception_handler.dart';
import 'package:edtech/app/exception_handler/exception_image_mapper.dart';
import 'package:edtech/app/exception_handler/exception_message_mapper.dart';
import 'package:edtech/app/features/auth/bloc/auth_bloc.dart';
import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/exception/base/app_exception_wrapper.dart';
import 'package:edtech/core/exception/remote/remote_exception.dart';
import 'package:edtech/core/helper/stream/dispose_bag.dart';
import 'package:edtech/core/mixin/log_mixin.dart';
import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/utils/num_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../core/utils/log_utils.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends BaseBlocDelegate<E, S> with EventTransformerMixin, LogMixin {
  BaseBloc(super.initialState);
}

abstract class BaseBlocDelegate<E extends BaseBlocEvent,
    S extends BaseBlocState> extends Bloc<E, S> {
  BaseBlocDelegate(super.initialState);

  late final AppNavigator navigator;
  late final AppBloc appBloc;
  late final AuthBloc authBloc = GetIt.instance.get<AuthBloc>();
  // late final NotificationBloc notificationBloc =
  //     GetIt.instance.get<NotificationBloc>();
  late final ExceptionHandler exceptionHandler;
  late final ExceptionMessageMapper exceptionMessageMapper;
  late final ExceptionImageMapper exceptionImageMapper;
  late final DisposeBag disposeBag;
  late final CommonBloc _commonBloc;

  set commonBloc(CommonBloc commonBloc) {
    _commonBloc = commonBloc;
  }

  CommonBloc get commonBloc =>
      this is CommonBloc ? this as CommonBloc : _commonBloc;

  @override
  void add(E event) {
    if (!isClosed) {
      super.add(event);
    } else {
      Log.e('Cannot add new event $event because $runtimeType was closed');
    }
  }

  Future<void> addException(AppExceptionWrapper appExceptionWrapper) async {
    commonBloc.add(ExceptionEmitted(
      appExceptionWrapper: appExceptionWrapper,
    ));

    return appExceptionWrapper.exceptionCompleter?.future;
  }

  void showLoading() {
    commonBloc.add(const LoadingVisibilityEmitted(isLoading: true));
  }

  void hideLoading() {
    commonBloc.add(const LoadingVisibilityEmitted(isLoading: false));
  }

  Future<void> runBlocCatching({
    required Future<void> Function() action,
    Future<void> Function()? doOnRetry,
    Future<void> Function(AppException)? doOnError,
    Future<void> Function()? doOnSubscribe,
    Future<void> Function()? doOnSuccessOrError,
    Future<void> Function()? doOnEventCompleted,
    bool handleLoading = true,
    bool handleError = true,
    bool handleRetry = true,
    bool Function(AppException)? forceHandleError,
    String? overrideErrorMessage,
    int? maxRetries,
  }) async {
    assert(maxRetries == null || maxRetries > 0, 'maxRetries must be positive');
    Completer<void>? recursion;
    try {
      await doOnSubscribe?.call();
      if (handleLoading) {
        showLoading();
      }

      await action.call();

      if (handleLoading) {
        hideLoading();
      }
      await doOnSuccessOrError?.call();
    } on AppException catch (e) {
      if (handleLoading) {
        hideLoading();
      }
      await doOnSuccessOrError?.call();
      await doOnError?.call(e);

      if (handleError || (forceHandleError?.call(e) ?? _forceHandleError(e))) {
        await addException(AppExceptionWrapper(
          appException: e,
          doOnRetry: doOnRetry ??
              (handleRetry && maxRetries != 1
                  ? () async {
                      recursion = Completer();
                      await runBlocCatching(
                        action: action,
                        doOnEventCompleted: doOnEventCompleted,
                        doOnSubscribe: doOnSubscribe,
                        doOnSuccessOrError: doOnSuccessOrError,
                        doOnError: doOnError,
                        doOnRetry: doOnRetry,
                        forceHandleError: forceHandleError,
                        handleError: handleError,
                        handleLoading: handleLoading,
                        handleRetry: handleRetry,
                        overrideErrorMessage: overrideErrorMessage,
                        maxRetries: maxRetries?.minus(1),
                      );
                      recursion?.complete();
                    }
                  : null),
          exceptionCompleter: Completer<void>(),
          overrideMessage: overrideErrorMessage,
        ));
      }
    } finally {
      await recursion?.future;
      await doOnEventCompleted?.call();
    }
  }

  bool _forceHandleError(AppException appException) {
    return appException is RemoteException &&
        (appException.kind == RemoteExceptionKind.refreshTokenFailed ||
            appException.kind == RemoteExceptionKind.sessionExpired);
  }
}

EventTransformer<Event> sequential<Event>() {
  return (events, mapper) => events.asyncExpand(mapper);
}
