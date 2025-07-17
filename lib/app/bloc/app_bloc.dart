import 'package:edtech/app/base/bloc/base_bloc.dart';
import 'package:edtech/app/base/bloc/base_bloc_event.dart';
import 'package:edtech/app/base/bloc/base_bloc_state.dart';
import 'package:edtech/app/domain/usecase/get_app_setting_use_case.dart';
import 'package:edtech/app/domain/usecase/save_language_code_use_case.dart';
import 'package:edtech/app/domain/usecase/save_theme_mode_use_case.dart';
import 'package:edtech/app/features/auth/bloc/auth_bloc.dart';
import 'package:edtech/app/utils/cubit_ext.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:edtech/core/resource/theme/data/theme_data_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';
part 'app_state.dart';

@LazySingleton()
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc(
    this._authBloc,
    this._getAppDataUseCase,
    this._saveIsDarkModeUseCase,
    this._saveLanguageCodeUseCase,
  ) : super(const AppState()) {
    on<AppStarted>(_onAppStarted, transformer: log());
    on<AuthStatusUpdated>(_onAuthStatusUpdated, transformer: throttleTime());
    on<AppThemeChanged>(_onAppThemeChanged, transformer: throttleTime());
    on<AppLanguageChanged>(_onAppLanguageChanged, transformer: log());

    _authBloc.stream.listen((authState) {
      authState.whenOrNull(
        authenticated: (user) {
          add(const AuthStatusUpdated(AuthStatus.authenticated));
          // NotificationService.handleInitialMessage();
          // notificationBloc.add(const NotificationStarted());
        },
        unauthenticated: () =>
            add(const AuthStatusUpdated(AuthStatus.unauthenticated)),
      );
    });
  }

  final AuthBloc _authBloc;
  final GetAppSettingUseCase _getAppDataUseCase;
  final SaveThemeModeUseCase _saveIsDarkModeUseCase;
  final SaveLanguageCodeUseCase _saveLanguageCodeUseCase;

  Future<void> _onAppStarted(
    AppStarted event,
    Emitter<AppState> emit,
  ) async {
    return runBlocCatching(
      action: () async {
        final GetAppSettingUseCaseOutput output =
            _getAppDataUseCase.execute(const GetAppSettingUseCaseInput());
        _updateThemeSetting(output.isDarkMode);

        safeEmit(state.copyWith(
          isDarkTheme: output.isDarkMode,
          languageCode: output.languageCode,
        ));

        FlutterNativeSplash.remove();
      },
    );
  }

  Future<void> _onAuthStatusUpdated(
    AuthStatusUpdated event,
    Emitter<AppState> emit,
  ) async =>
      safeEmit(state.copyWith(authStatus: event.status));

  Future<void> _onAppThemeChanged(
    AppThemeChanged event,
    Emitter<AppState> emit,
  ) async {
    return runBlocCatching(
      action: () async {
        await _saveIsDarkModeUseCase.execute(
          SaveThemeModeInput(isDarkMode: event.isDarkTheme),
        );
        _updateThemeSetting(event.isDarkTheme);

        safeEmit(state.copyWith(isDarkTheme: event.isDarkTheme));
      },
    );
  }

  Future<void> _onAppLanguageChanged(
    AppLanguageChanged event,
    Emitter<AppState> emit,
  ) async {
    return runBlocCatching(
      action: () async {
        await _saveLanguageCodeUseCase.execute(
          SaveLanguageCodeInput(languageCode: event.languageCode),
        );

        safeEmit(state.copyWith(languageCode: event.languageCode));
      },
    );
  }

  void _updateThemeSetting(bool isDarkTheme) =>
      AppThemeSetting.currentAppThemeType =
          isDarkTheme ? AppThemeType.dark : AppThemeType.light;
}
