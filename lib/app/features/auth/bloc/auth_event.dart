part of 'auth_bloc.dart';

@freezed
class AuthEvent extends BaseBlocEvent with _$AuthEvent {
  const factory AuthEvent.init() = _Initial;
  const factory AuthEvent.loggedIn(User user) = _LoggedIn;
  const factory AuthEvent.loggedOut() = _LoggedOut;
}
