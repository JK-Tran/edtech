import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class AppFilterChip extends StatelessWidget {
  const AppFilterChip({
    required this.label,
    required this.onSelected,
    this.selected = false,
    this.padding,
    this.avatar,
    this.avatarBorder,
    this.showCheckmark = false,
    this.selectedColor,
    this.backgroundColor = Colors.transparent,
    this.side,
    this.elevation,
    super.key,
  });

  final bool selected;
  final Widget label;
  final ValueChanged<bool>? onSelected;

  final EdgeInsetsGeometry? padding;
  final Widget? avatar;
  final bool showCheckmark;
  final Color? selectedColor;
  final Color backgroundColor;
  final ShapeBorder? avatarBorder;
  final BorderSide? side;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      padding: padding ?? context.insets.p12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.d8),
        side: side ??
            BorderSide(
              color: selected
                  ? selectedColor ?? context.colors.primary40
                  : context.colors.neuTralVariant10,
            ),
      ),
      elevation: elevation ?? (selected ? 2 : 0),
      showCheckmark: showCheckmark,
      avatar: avatar,
      avatarBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.d4),
      ),
      backgroundColor: backgroundColor,
      selectedColor: context.colorScheme.primary,
      disabledColor: context.colors.neuTral90,
      shadowColor: context.colors.primary10,
      selectedShadowColor: context.colors.primary10,
      checkmarkColor: selectedColor ?? context.colors.primary40,
      labelStyle: context.textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
        color: selected
            ? context.colors.primary100
            : context.colors.neuTralVariant30,
      ),
      label: label,
      selected: selected,
      onSelected: onSelected,
    );
  }
}
