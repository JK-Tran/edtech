import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonIcon extends StatelessWidget {
  const AppElevatedButtonIcon({
    required this.icon,
    required this.label,
    required this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.padding,
    this.primary,
    this.expandedWith = true,
    this.alignment,
    this.isLoading = false,
    this.dense = true,
    this.height,
    this.borderRadius,
    super.key,
  });

  final Widget label;

  final Widget icon;

  final Color? primary;

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
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        surfaceTintColor: AppColors.primary10,
        shadowColor: AppColors.primary10,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        textStyle: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w500,
          color: onPressed != null
              ? AppColors.primary100
              : AppColors.neuTralVariant10,
        ),
        backgroundColor: primary ?? AppColors.primary,
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
      icon: AnimatedSize(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
        child: isLoading
            ? SizedBox.square(
                dimension: Dimens.d48,
                child: Assets.jsons.antoreeLoading.lottie(),
              )
            : icon,
      ),
      label: label,
    );
  }
}
