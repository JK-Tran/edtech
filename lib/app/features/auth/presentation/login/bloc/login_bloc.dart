import 'dart:async';

import 'package:edtech/app/base/bloc/base_bloc.dart';
import 'package:edtech/app/base/bloc/base_bloc_event.dart';
import 'package:edtech/app/base/bloc/base_bloc_state.dart';
import 'package:edtech/app/features/auth/bloc/auth_bloc.dart';
import 'package:edtech/app/features/auth/data/source/google_auth_service.dart';
import 'package:edtech/app/features/auth/domain/entity/user.dart';
import 'package:edtech/app/features/auth/domain/usecases/login_use_case.dart';
import 'package:edtech/app/features/auth/domain/usecases/login_with_google_use_case.dart';
import 'package:edtech/app/utils/cubit_ext.dart';
import 'package:edtech/core/constants/env_constants.dart';
import 'package:edtech/core/exception/base/app_exception_wrapper.dart';
import 'package:edtech/core/exception/remote/remote_exception.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/device_info_utils.dart';
import 'package:edtech/resources/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@Injectable()
class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  LoginBloc(
    this._loginUseCase,
    this._loginWithGoogleUseCase,
    this._googleAuthService,
  ) : super(kDebugMode ? LoginState.debugInit : const LoginState()) {
    on<EmailChanged>(
      _onEmailChanged,
      transformer: distinct(),
    );

    on<PasswordChanged>(
      _onPasswordChanged,
      transformer: distinct(),
    );

    on<LoginButtonPressed>(
      _onLoginButtonPressed,
      transformer: log(),
    );

    on<ShowPassswordButtonPressed>(
      _onShowPassswordButtonPressed,
    );

    on<LoginWithGoogleButtonPressed>(
      _onLoginWithGoogleButtonPressed,
      transformer: log(),
    );
  }

  final LoginUseCase _loginUseCase;
  final LoginWithGoogleUseCase _loginWithGoogleUseCase;
  final GoogleAuthService _googleAuthService;

  bool _isLoginButtonEnabled(String email, String password) {
    return email.isNotEmpty && password.isNotEmpty;
  }

  void _onEmailChanged(
    EmailChanged event,
    Emitter<LoginState> emit,
  ) {
    safeEmit(state.copyWith(
      email: event.email,
      isLoginButtonEnabled: _isLoginButtonEnabled(event.email, state.password),
      showLoginButtonLoading: false,
      onPageError: '',
    ));
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    safeEmit(state.copyWith(
      password: event.password,
      isLoginButtonEnabled: _isLoginButtonEnabled(state.email, event.password),
      showLoginButtonLoading: false,
      onPageError: '',
    ));
  }

  FutureOr<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) {
    return runBlocCatching(
      handleError: false,
      action: () async {
        // Print device info before login
        await DeviceInfoUtils.printDeviceInfo();
        final fakeUser = User(
          id: 1,
          email: state.email,
          fullName: 'Test User',
          // ... các trường khác nếu cần
        );

        // Bắn event đăng nhập thành công
        authBloc.add(AuthEvent.loggedIn(fakeUser));
        // safeEmit(state.copyWith(onPageError: '', showLoginButtonLoading: true));
        // final LoginOutput output = await _loginUseCase.execute(LoginInput(
        //   email: state.email,
        //   password: state.password,
        // ));

        // if (output.user case final user?) {
        //   authBloc.add(AuthEvent.loggedIn(user));
        // }
        safeEmit(state.copyWith(showLoginButtonLoading: false));
      },
      doOnError: (e) async {
        if (e is RemoteException && e.httpErrorCode == 400) {
          safeEmit(state.copyWith(
            onPageError: e.httpErrorCode == 400
                ? S.current.wrong_username_password
                : 'Đã có lỗi xảy ra, vui lòng thử lại sau',
          ));

          await addException(AppExceptionWrapper(
            appException: e,
            overrideImage: Assets.illustration.banError.path,
            overrideMessage: S.current.wrong_username_password,
          ));
        } else {
          safeEmit(state.copyWith(
            onPageError: exceptionMessageMapper.map(e),
          ));
        }
      },
      doOnSuccessOrError: () async =>
          safeEmit(state.copyWith(showLoginButtonLoading: false)),
    );
  }

  void _onShowPassswordButtonPressed(
    ShowPassswordButtonPressed event,
    Emitter<LoginState> emit,
  ) {
    safeEmit(state.copyWith(obscureText: !state.obscureText));
  }

  FutureOr<void> _onLoginWithGoogleButtonPressed(
    LoginWithGoogleButtonPressed event,
    Emitter<LoginState> emit,
  ) {
    return runBlocCatching(
      handleError: false,
      action: () async {
        safeEmit(state.copyWith(onPageError: '', showLoginButtonLoading: true));

        // 1. Đăng nhập với Google
        final googleAccount = await _googleAuthService.signIn();
        if (googleAccount == null) {
          safeEmit(state.copyWith(showLoginButtonLoading: false));
          return;
        }

        // 2. Lấy thông tin người dùng
        final auth = await googleAccount.authentication;
        final idToken = auth.idToken;
        if (idToken == null) {
          throw Exception('Failed to get ID token from Google');
        }

        // 3. Gọi API để xác thực với server
        final output = await _loginWithGoogleUseCase.execute(
          LoginWithGoogleInput(
            idToken: idToken,
            email: googleAccount.email,
            name: googleAccount.displayName ?? '',
            photoUrl: googleAccount.photoUrl,
          ),
        );

        if (output.user case final user?) {
          authBloc.add(AuthEvent.loggedIn(user));
        }
      },
      doOnError: (e) async {
        safeEmit(state.copyWith(
          onPageError: exceptionMessageMapper.map(e),
        ));
      },
      doOnSuccessOrError: () async =>
          safeEmit(state.copyWith(showLoginButtonLoading: false)),
    );
  }
}
