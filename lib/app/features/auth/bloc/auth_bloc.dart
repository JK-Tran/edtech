import 'dart:async';

import 'package:edtech/app/base/bloc/base_bloc.dart';
import 'package:edtech/app/base/bloc/base_bloc_event.dart';
import 'package:edtech/app/base/bloc/base_bloc_state.dart';
import 'package:edtech/app/base/bloc/common/common_bloc.dart';
import 'package:edtech/app/config/di/di.dart';
import 'package:edtech/app/features/auth/domain/entity/user.dart';
import 'package:edtech/app/features/auth/domain/usecases/get_initial_app_data_use_case.dart';
import 'package:edtech/app/features/auth/domain/usecases/logout_use_case.dart';
import 'package:edtech/app/features/auth/domain/usecases/save_current_user_use_case.dart';
import 'package:edtech/app/helper/tracking_services.dart';
import 'package:edtech/app/utils/cubit_ext.dart';
// import 'package:edtech/core/services/firebase/firebase_messaging.dart';
import 'package:edtech/core/utils/date_time_utils.dart';
import 'package:edtech/core/utils/log_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@LazySingleton()
class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc(
    this._authDataUseCase,
    this._saveCurrentUserUseCase,
    this._logoutUseCase,
  ) : super(const AuthState.unauthenticated()) {
    commonBloc = getIt.get<CommonBloc>();
    on<_Initial>(_onInitial);
    on<_LoggedIn>(_onLoggedIn);
    on<_LoggedOut>(_onLoggedOut);
  }

  final GetInitialAuthDataUseCase _authDataUseCase;
  final SaveCurrentUserUseCase _saveCurrentUserUseCase;
  final LogoutUseCase _logoutUseCase;

  FutureOr<void> _onInitial(
    _Initial event,
    Emitter<AuthState> emit,
  ) {
    return runBlocCatching(
      action: () async {
        final GetInitialAuthDataOutput output =
            await _authDataUseCase.execute(const GetInitialAuthDataInput());
        if (output.isLoggedIn && output.user != null && output.user?.id != -1) {
          safeEmit(AuthState.authenticated(output.user!));
        } else {
          safeEmit(const AuthState.unauthenticated());
        }
      },
      doOnError: (e) async => safeEmit(const AuthState.unauthenticated()),
    );
  }

  FutureOr<void> _onLoggedIn(
    _LoggedIn event,
    Emitter<AuthState> emit,
  ) async {
    return runBlocCatching(
      action: () async {
        await _saveCurrentUserUseCase
            .execute(SaveCurrentUserInput(currentUser: event.user));

        safeEmit(AuthState.authenticated(event.user));
        // Tracking sign in
        Log.d('isLoggedIn');
        TrackingServices.eventSignIn(
          event.user.fullName,
          DateTimeUtils.getDateTimeNow('HH:mm:ss'),
        );
        // Notification registration
        // notificationBloc.add(NotificationRegistered(
        //   token: await AntoreeMessaging.instance.getToken(),
        // ));
      },
      doOnError: (e) async => safeEmit(const AuthState.unauthenticated()),
    );
  }

  FutureOr<void> _onLoggedOut(
    _LoggedOut? event,
    Emitter<AuthState> emit,
  ) async {
    return runBlocCatching(
        action: () async {
          //AntoreeMessaging.instance.deleteToken();
          // await Future.delayed(const Duration(seconds: 1));

          ///
          await _logoutUseCase.execute(const LogoutInput());
        },
        doOnSuccessOrError: () async =>
            safeEmit(const AuthState.unauthenticated()));
  }

  User? get currentUser =>
      state.mapOrNull(authenticated: (value) => value.user);
}
