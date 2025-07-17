import 'package:flutter/material.dart';

import 'loading_indicator.dart';

class LoadingOpacity extends StatelessWidget {
  const LoadingOpacity({
    required this.child,
    required this.loading,
    this.isOpacity = true,
    super.key,
  });

  final Widget child;
  final bool loading;
  final bool isOpacity;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: loading
          ? isOpacity
              ? 0.5
              : 1
          : 1,
      child: AbsorbPointer(
        absorbing: loading,
        child: Stack(
          // alignment: Alignment.center,
          children: <Widget>[
            child,
            if (loading) const LoadingIndicator(),
          ],
        ),
      ),
    );
  }
}
