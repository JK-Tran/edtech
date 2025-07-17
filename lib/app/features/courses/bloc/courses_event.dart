part of 'courses_bloc.dart';

@freezed
class CoursesEvent extends BaseBlocEvent with _$CoursesEvent {
  const factory CoursesEvent.started() = _Started;
}
