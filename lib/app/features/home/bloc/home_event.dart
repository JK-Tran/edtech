part of 'home_bloc.dart';

@freezed
class HomeEvent extends BaseBlocEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
}
