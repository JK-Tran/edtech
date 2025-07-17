part of 'app_bloc.dart';

@freezed
class AppState extends BaseBlocState with _$AppState {
  const factory AppState({
    @Default(AuthStatus.unauthenticated) AuthStatus authStatus,
    @Default(ThemeDataContainer()) ThemeDataContainer themeDataContainer,
    @Default(LanguageCode.vi) LanguageCode languageCode,
    @Default(false) bool isDarkTheme,
  }) = _AppState;
}
