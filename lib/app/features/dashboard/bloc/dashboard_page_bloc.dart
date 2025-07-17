import 'dart:async';

import 'package:edtech/app/base/bloc/base_bloc.dart';
import 'package:edtech/app/base/bloc/base_bloc_event.dart';
import 'package:edtech/app/base/bloc/base_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_page_bloc.freezed.dart';
part 'dashboard_page_event.dart';
part 'dashboard_page_state.dart';

@Injectable()
class DashboardPageBloc
    extends BaseBloc<DashboardPageEvent, DashboardPageState> {
  DashboardPageBloc() : super(const DashboardPageState()) {
    on<_Started>(_onDashboardPageStarted);
  }

  // final GetNearestUnitUseCase _nearestUnitUseCase;

  FutureOr<void> _onDashboardPageStarted(
    _Started event,
    Emitter<DashboardPageState> emit,
  ) async {
    return runBlocCatching(
      action: () async {
        // final output =
        //     await _nearestUnitUseCase.execute(const GetNearestUnitInput());
        // safeEmit(state.copyWith(unit: output.unit));
      },
      handleLoading: false,
      handleError: false,
    );
  }
}
