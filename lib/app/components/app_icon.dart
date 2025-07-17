import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    this.size,
    this.color,
    this.alignment = Alignment.center,
    this.fit = BoxFit.contain,
    super.key,
  });

  final SvgGenImage icon;

  final double? size;

  final BoxFit fit;

  final Color? color;

  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return icon.svg(
      width: size,
      height: size,
      alignment: alignment,
      fit: fit,
      color: color,
    );
  }
}
