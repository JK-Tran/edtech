import 'dart:async';

import 'package:edtech/app/base/bloc/base_bloc.dart';
import 'package:edtech/app/base/bloc/base_bloc_event.dart';
import 'package:edtech/app/base/bloc/base_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'courses_bloc.freezed.dart';
part 'courses_event.dart';
part 'courses_state.dart';

@Injectable()
class CoursesBloc extends BaseBloc<CoursesEvent, CoursesState> {
  CoursesBloc() : super(const CoursesState()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CoursesState> emit,
  ) async {
    return runBlocCatching(
      action: () async {},
      handleLoading: false,
      handleError: false,
    );
  }
}
