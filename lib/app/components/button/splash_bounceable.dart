import 'package:flutter/material.dart';

class SplashBounceable extends StatefulWidget {
  const SplashBounceable({
    required this.onTap,
    required this.child,
    this.onTapUp,
    this.onTapDown,
    this.onTapCancel,
    this.duration = const Duration(milliseconds: 200),
    this.reverseDuration = const Duration(milliseconds: 200),
    this.curve = Curves.decelerate,
    this.reverseCurve = Curves.decelerate,
    this.scaleFactor = 0.8,
    this.borderRadius,
    this.customBorder,
    this.focusColor,
    this.highlightColor,
    this.hoverColor,
    this.splashColor,
    super.key,
  }) : assert(
          scaleFactor >= 0.0 && scaleFactor <= 1.0,
          'The valid range of scaleFactor is from 0.0 to 1.0.',
        );

  /// Set it to `null` to disable `onTap`.
  final VoidCallback? onTap;
  final void Function(TapUpDetails)? onTapUp;
  final void Function(TapDownDetails)? onTapDown;
  final VoidCallback? onTapCancel;

  /// The reverse duration of the scaling animation when `onTapUp`.
  final Duration? duration;

  /// The duration of the scaling animation when `onTapDown`.
  final Duration? reverseDuration;

  /// The reverse curve of the scaling animation when `onTapUp`.
  final Curve curve;

  /// The curve of the scaling animation when `onTapDown`..
  final Curve? reverseCurve;

  /// The scale factor of the child widget. The valid range of `scaleFactor` is from `0.0` to `1.0`.
  final double scaleFactor;
  final Color? splashColor;
  final BorderRadius? borderRadius;
  final ShapeBorder? customBorder;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;

  final Widget child;

  @override
  State<SplashBounceable> createState() => _SplashBounceableState();
}

class _SplashBounceableState extends State<SplashBounceable>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: widget.duration,
    reverseDuration: widget.reverseDuration,
    value: 1.0,
    lowerBound: widget.scaleFactor,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: widget.curve,
    reverseCurve: widget.reverseCurve,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        borderRadius: widget.borderRadius,
        customBorder: widget.customBorder,
        focusColor: widget.focusColor,
        highlightColor: widget.highlightColor,
        splashColor: widget.splashColor,
        hoverColor: widget.hoverColor,
        onTapCancel: widget.onTap != null ? _onTapCancel : null,
        onTapDown: widget.onTap != null ? _onTapDown : null,
        onTapUp: widget.onTap != null ? _onTapUp : null,
        onTap: widget.onTap != null ? _onTap : null,
        child: ScaleTransition(
          scale: _animation,
          child: widget.child,
        ),
      ),
    );
  }

  void _onTap() {
    if (widget.onTap != null) {
      widget.onTap!();
    }

    _controller.reverse().then((_) {
      _controller.forward();
    });
  }

  void _onTapUp(TapUpDetails details) {
    if (widget.onTapUp != null) {
      widget.onTapUp!(details);
    }
    _controller.forward();
  }

  void _onTapDown(TapDownDetails details) {
    if (widget.onTapDown != null) {
      widget.onTapDown!(details);
    }
    _controller.reverse();
  }

  void _onTapCancel() {
    if (widget.onTapCancel != null) {
      widget.onTapCancel!();
    }
    _controller.forward();
  }
}
