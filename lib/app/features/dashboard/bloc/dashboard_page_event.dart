part of 'dashboard_page_bloc.dart';

@freezed
class DashboardPageEvent extends BaseBlocEvent with _$DashboardPageEvent {
  const factory DashboardPageEvent.started() = _Started;
}
