import 'package:edtech/app/components/app_icon.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class AppInputChip extends StatelessWidget {
  const AppInputChip({
    required this.label,
    super.key,
    this.selected = false,
    this.onPressed,
    this.onSelected,
    this.onDeleted,
    this.padding,
    this.avatar,
    this.deleteIcon,
    this.avatarBorder = const RoundedRectangleBorder(),
    this.showCheckmark = false,
    this.selectedColor,
    this.backgroundColor = Colors.transparent,
    this.side,
  });

  final bool selected;
  final Widget label;
  final ValueChanged<bool>? onSelected;
  final VoidCallback? onPressed;
  final VoidCallback? onDeleted;

  final EdgeInsetsGeometry? padding;
  final Widget? avatar;
  final Widget? deleteIcon;
  final bool showCheckmark;
  final Color? selectedColor;
  final Color backgroundColor;
  final ShapeBorder avatarBorder;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    return InputChip(
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
      showCheckmark: showCheckmark,
      avatar: avatar,
      avatarBorder: avatarBorder,
      backgroundColor: backgroundColor,
      selectedColor: context.colors.primary100,
      disabledColor: context.colors.neuTral90,
      shadowColor: context.colors.primary10,
      selectedShadowColor: context.colors.primary10,
      checkmarkColor: selectedColor ?? context.colors.primary40,
      labelStyle: context.textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
        color: selected
            ? selectedColor ?? context.colors.primary40
            : context.colors.neuTralVariant30,
      ),
      deleteIcon: deleteIcon ??
          AppIcon(
            Assets.icons.iconCloseCircle,
            color: selected
                ? selectedColor ?? context.colors.primary40
                : context.colors.neuTral10,
          ),
      label: label,
      selected: selected,
      onSelected: onSelected,
      onPressed: onPressed,
      onDeleted: onDeleted,
    );
  }
}
