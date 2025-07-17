import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.onPressed,
    required this.child,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.padding,
    this.backgroundColor,
    this.foregroundColor,
    this.expandedWith = true,
    this.isLoading = false,
    this.alignment,
    this.dense = true,
    this.height,
    this.width,
    this.borderRadius,
    this.textStyle,
    this.withShadow = false,
    super.key,
  });

  final Widget child;

  final TextStyle? textStyle;

  final Color? backgroundColor;

  final Color? foregroundColor;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onPressed;

  final VoidCallback? onLongPress;

  final ValueChanged<bool>? onHover;

  final ValueChanged<bool>? onFocusChange;

  final bool expandedWith;

  final AlignmentGeometry? alignment;

  final double? height;

  final double? width;

  final bool isLoading;

  final bool dense;

  final bool withShadow;

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: withShadow
            ? [
                BoxShadow(
                  offset: const Offset(0, 2),
                  blurRadius: 9,
                  color: context.colorScheme.outline.withValues(alpha: 0.12),
                ),
                BoxShadow(
                  offset: const Offset(0, 22),
                  blurRadius: 136,
                  color: context.colorScheme.outline.withValues(alpha: 0.0296),
                ),
              ]
            : null,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: AppColors.primary10,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
          ),
          foregroundColor: foregroundColor ??
              (onPressed != null
                  ? AppColors.primary100
                  : AppColors.neuTralVariant10),
          textStyle: textStyle,
          backgroundColor: backgroundColor,
          minimumSize: Size(
            expandedWith ? context.width : width ?? 0,
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
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          child: isLoading
              ? SizedBox.square(
                  dimension: Dimens.d48,
                  child: Assets.jsons.antoreeLoading.lottie(),
                )
              : child,
        ),
      ),
    );
  }
}
