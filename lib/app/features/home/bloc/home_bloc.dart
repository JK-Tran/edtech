import 'dart:async';

import 'package:edtech/app/base/bloc/base_bloc.dart';
import 'package:edtech/app/base/bloc/base_bloc_event.dart';
import 'package:edtech/app/base/bloc/base_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@Injectable()
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    return runBlocCatching(
      action: () async {},
      handleLoading: false,
      handleError: false,
    );
  }
}
