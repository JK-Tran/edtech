part of 'auth_bloc.dart';

@freezed
class AuthState extends BaseBlocState with _$AuthState {
  const factory AuthState.unauthenticated() = _Unauthenticated;

  const factory AuthState.noPermission() = _NoPermission;

  const factory AuthState.authenticated(User user) = _Authenticated;
}
