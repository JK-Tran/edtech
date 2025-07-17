import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class AppChoiceChip extends StatelessWidget {
  const AppChoiceChip({
    required this.label,
    required this.onSelected,
    this.selected = false,
    this.padding,
    this.avatar,
    this.avatarBorder = const RoundedRectangleBorder(),
    this.selectedColor,
    this.backgroundColor = Colors.transparent,
    this.side,
    super.key,
  });

  final bool selected;
  final Widget label;
  final ValueChanged<bool>? onSelected;

  final EdgeInsetsGeometry? padding;
  final Widget? avatar;
  final Color? selectedColor;
  final Color backgroundColor;
  final ShapeBorder avatarBorder;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      padding: padding ?? context.insets.p12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.d8),
        side: side ??
            BorderSide(
              color: selected
                  ? context.colors.primary40
                  : context.colors.neuTralVariant10,
            ),
      ),
      elevation: selected ? 2 : 0,
      avatar: avatar,
      avatarBorder: avatarBorder,
      backgroundColor: backgroundColor,
      selectedColor: context.colors.primary100,
      disabledColor: context.colors.neuTral90,
      shadowColor: context.colors.primary10,
      selectedShadowColor: context.colors.primary10,
      labelStyle: context.textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
        color: selected
            ? selectedColor ?? context.colors.primary40
            : context.colors.neuTralVariant30,
      ),
      label: label,
      selected: selected,
      onSelected: onSelected,
    );
  }
}
