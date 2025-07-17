import 'dart:async';

import 'package:flutter/widgets.dart';

typedef TapDebouncerFunc = Future<void> Function();

/// Tap debouncer widget
class ButtonDebouncer extends StatefulWidget {
  const ButtonDebouncer({
    required this.builder,
    this.waitBuilder,
    this.onTap,
    this.cooldown,
    super.key,
  });

  /// Pass this time to constructor if want to allow only one tap and
  /// then disable button forever
  static const Duration kNeverCooldown = Duration(days: 100000000);

  /// Main button builder function
  /// context is current context
  /// onTap is function to pass to SomeButton or InkWell
  final Widget Function(BuildContext context, TapDebouncerFunc? onTap) builder;

  /// Waiting button builder function
  /// context is current context
  /// child is widget returning from builder method with onTap equal null
  final Widget Function(BuildContext context, Widget child)? waitBuilder;

  /// Function to call on tap
  final Future<void> Function()? onTap;

  /// Cooldown duration - delay after onTap executed (successfully or not)
  final Duration? cooldown;

  @override
  State<ButtonDebouncer> createState() => _ButtonDebouncerState();
}

class _ButtonDebouncerState extends State<ButtonDebouncer> {
  final DebouncerHandler _tapDebouncerHandler = DebouncerHandler();

  @override
  void dispose() {
    _tapDebouncerHandler.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      initialData: false,
      stream: _tapDebouncerHandler.busyStream,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.hasError) {
          throw StateError(
              '_tapDebouncerHandler.busy has error=${snapshot.error}');
        }

        final bool isBusy = snapshot.data!;

        if (!isBusy) {
          return widget.builder(
            context,
            widget.onTap == null
                ? null
                : () async {
                    await _tapDebouncerHandler.onTap(
                      () async {
                        await widget.onTap!();

                        if (widget.cooldown != null) {
                          await Future<void>.delayed(widget.cooldown!);
                        }
                      },
                    );
                  },
          );
        }

        final Widget disabledChild = widget.builder(context, null);

        if (widget.waitBuilder == null) {
          return disabledChild;
        } else {
          return widget.waitBuilder!(context, disabledChild);
        }
      },
    );
  }
}

/// Single tap debouncer
class DebouncerHandler {
  DebouncerHandler() : _busyController = StreamController<bool>()..add(false);

  final StreamController<bool> _busyController;

  /// Busy state stream
  Stream<bool> get busyStream => _busyController.stream;

  /// Dispose resources
  void dispose() {
    _busyController.close();
  }

  /// Process onTap
  Future<void> onTap(Future<void> Function() onTap) async {
    try {
      if (!_busyController.isClosed) {
        _busyController.add(true);
      }

      await onTap();
    } on Exception catch (_) {
      rethrow;
    } finally {
      if (!_busyController.isClosed) {
        _busyController.add(false);
      }
    }
  }
}
