import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    required this.child,
    required this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.padding,
    this.foregroundColor,
    this.expandedWith = false,
    this.alignment,
    this.isLoading = false,
    this.dense = true,
    this.height,
    this.textStyle,
    super.key,
  });

  final Widget child;

  final Color? foregroundColor;

  final TextStyle? textStyle;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onPressed;

  final VoidCallback? onLongPress;

  final ValueChanged<bool>? onHover;

  final ValueChanged<bool>? onFocusChange;

  final bool expandedWith;

  final AlignmentGeometry? alignment;

  final bool isLoading;

  final bool dense;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shadowColor: AppColors.primary10,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.d16),
        ),
        foregroundColor: onPressed != null
            ? foregroundColor ?? context.colorScheme.onSurface
            : context.colorScheme.onSurface.withValues(alpha: 0.4),
        textStyle: textStyle ??
            context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
        minimumSize: Size(
          expandedWith ? context.width : 0,
          height != null
              ? height!
              : dense
                  ? Dimens.d48
                  : Dimens.d64,
        ),
        alignment: alignment,
      ),
      onPressed: isLoading ? () {} : onPressed,
      onLongPress: isLoading ? () {} : onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        switchOutCurve: Curves.fastOutSlowIn,
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(scale: animation, child: child),
        child: isLoading
            ? const SizedBox.square(
                dimension: Dimens.d32,
                child: CircularProgressIndicator(),
              )
            : child,
      ),
    );
  }
}
