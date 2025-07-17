import 'dart:async';

import 'package:edtech/app/bloc/app_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream() {
    final bloc = GetIt.instance.get<AppBloc>();
    notifyListeners();
    _subscription = bloc.stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
