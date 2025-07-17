import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    required this.child,
    required this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.padding,
    this.borderColor,
    this.foregroundColor,
    this.expandedWith = true,
    this.alignment,
    this.isLoading = false,
    this.dense = true,
    this.height,
    this.borderRadius,
    super.key,
  });

  final Widget child;

  final Color? borderColor;
  final Color? foregroundColor;

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

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        shadowColor: AppColors.primary10,
        foregroundColor: foregroundColor,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
        side: BorderSide(color: borderColor ?? context.colorScheme.outline),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(Dimens.d16),
        ),
        textStyle: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w500,
          color: onPressed != null
              ? AppColors.primary10
              : AppColors.neuTralVariant10,
        ),
        minimumSize: Size(
          expandedWith ? context.width : 60,
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
      child: AnimatedSize(
        duration: const Duration(milliseconds: 100),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (Widget child, Animation<double> animation) =>
              ScaleTransition(scale: animation, child: child),
          switchInCurve: Curves.fastOutSlowIn,
          child: isLoading
              ? SizedBox.square(
                  dimension: height != null ? height! * 0.5 : Dimens.d24,
                  child: CircularProgressIndicator(
                    color: borderColor,
                    strokeWidth: height != null ? height! * 0.05 : Dimens.d4,
                  ),
                )
              : child,
        ),
      ),
    );
  }
}
