import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class AppActionChip extends StatelessWidget {
  const AppActionChip({
    required this.label,
    required this.onPressed,
    this.padding,
    this.avatar,
    this.selectedColor,
    this.backgroundColor,
    this.side,
    super.key,
  });

  final Widget label;
  final VoidCallback onPressed;

  final EdgeInsetsGeometry? padding;
  final Widget? avatar;
  final Color? selectedColor;
  final Color? backgroundColor;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      padding: padding ?? context.insets.p12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.d8),
        side: side ??
            BorderSide(
              color: selectedColor ?? context.colors.neuTralVariant10,
            ),
      ),
      elevation: 0,
      avatar: avatar,
      backgroundColor: backgroundColor ?? context.colors.transparent,
      shadowColor: context.colors.primary10,
      labelStyle: context.textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
        color: selectedColor ?? context.colors.neuTralVariant30,
      ),
      label: label,
      onPressed: onPressed,
    );
  }
}
