part of 'login_bloc.dart';

abstract class LoginEvent extends BaseBlocEvent {
  const LoginEvent();
}

@freezed
class EmailChanged extends LoginEvent with _$EmailChanged {
  const factory EmailChanged({
    required String email,
  }) = _EmailChanged;
}

@freezed
class PasswordChanged extends LoginEvent with _$PasswordChanged {
  const factory PasswordChanged({
    required String password,
  }) = _PasswordChanged;
}

@freezed
class ShowPassswordButtonPressed extends LoginEvent
    with _$ShowPassswordButtonPressed {
  const factory ShowPassswordButtonPressed() = _ShowPassswordButtonPressed;
}

@freezed
class LoginButtonPressed extends LoginEvent with _$LoginButtonPressed {
  const factory LoginButtonPressed() = _LoginButtonPressed;
}

@freezed
class LoginWithGoogleButtonPressed extends LoginEvent
    with _$LoginWithGoogleButtonPressed {
  const factory LoginWithGoogleButtonPressed() = _LoginWithGoogleButtonPressed;
}
