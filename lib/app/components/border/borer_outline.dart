import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:flutter/material.dart';

class BorderOutline extends StatelessWidget {
  const BorderOutline({
    required this.child,
    this.expanded = false,
    this.border,
    super.key,
    EdgeInsets? padding,
  }) : padding =
            padding ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 12);

  final Widget child;

  final bool expanded;

  final EdgeInsets padding;

  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: padding,
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: border ?? Border.all(color: AppColors.blueGrey),
        ),
        decoration: const BoxDecoration(color: AppColors.primary100),
        child: expanded ? Center(child: child) : child,
      ),
    );
  }
}
