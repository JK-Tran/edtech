part of 'login_bloc.dart';

@freezed
class LoginState extends BaseBlocState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isLoginButtonEnabled,
    @Default(true) bool obscureText,
    @Default('') String onPageError,
    @Default(false) bool showLoginButtonLoading,
  }) = _LoginState;

  static LoginState get debugInit {
    return LoginState(
      email: debugUsername,
      password: debugPassword,
    );
  }

  static String get debugUsername {
    return switch (EnvConstants.flavor) {
      // Flavor.staging => 'student_test@antoree.com',
      Flavor.develop => 'newuser@example.com',
      Flavor.production => 'ancq209@gmail.com',
      _ => '',
    };
  }

  static String get debugPassword {
    return switch (EnvConstants.flavor) {
      Flavor.develop => 'securePassword123',
      Flavor.production => 'Testing@00',
      _ => '123456',
    };
  }
}
