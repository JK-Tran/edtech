import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class AppToggleButtons extends StatelessWidget {
  const AppToggleButtons({
    required this.children,
    required this.isSelected,
    required this.onPressed,
    this.padding,
    this.color,
    this.primary,
    this.expandedWith = true,
    this.alignment,
    super.key,
  });

  final List<Widget> children;
  final List<bool> isSelected;
  final Color? color;
  final Color? primary;
  final EdgeInsetsGeometry? padding;
  final void Function(int index)? onPressed;
  final bool expandedWith;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      color: color ?? AppColors.neuTralVariant30,
      selectedColor: primary ?? AppColors.primary40,
      selectedBorderColor: primary ?? AppColors.primary40,
      fillColor: primary?.withValues(alpha: 0.1) ?? AppColors.primary95,
      splashColor: primary?.withValues(alpha: 0.2) ?? AppColors.primary80,
      hoverColor: primary?.withValues(alpha: 0.1) ?? AppColors.primary95,
      borderRadius: BorderRadius.circular(8),
      borderColor: color ?? AppColors.neuTralVariant30,
      borderWidth: 1,
      textStyle: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w500,
        color: AppColors.secondary10,
      ),
      // required
      isSelected: isSelected,
      onPressed: onPressed,
      children: children,
    );
  }
}
