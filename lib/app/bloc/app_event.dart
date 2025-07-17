part of 'app_bloc.dart';

abstract class AppEvent extends BaseBlocEvent {}

@freezed
class AppStarted extends AppEvent with _$AppStarted {
  const factory AppStarted() = _AppStarted;
}

@freezed
class AuthStatusUpdated extends AppEvent with _$AuthStatusUpdated {
  const factory AuthStatusUpdated(AuthStatus status) = _AuthStatusUpdated;
}

@freezed
class AppThemeChanged extends AppEvent with _$AppThemeChanged {
  const factory AppThemeChanged(bool isDarkTheme) = _AppThemeChanged;
}

@freezed
class AppLanguageChanged extends AppEvent with _$AppLanguageChanged {
  const factory AppLanguageChanged(LanguageCode languageCode) =
      _AppLanguageChanged;
}
