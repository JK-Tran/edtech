import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  const FooterButton({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimens.d12,
        bottom: 24,
      ).add(
        const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: child,
    );
  }
}
