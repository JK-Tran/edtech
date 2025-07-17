import 'package:edtech/core/resource/theme/data/theme_data_container.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({
    required this.value,
    required this.onChanged,
    this.shape,
    this.side,
    super.key,
  });

  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final OutlinedBorder? shape;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    final ThemeDataContainer theme = context.themeResolver;

    return Checkbox(
      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
      focusColor: theme.colors.primary40,
      activeColor: theme.colors.primary40,
      checkColor: theme.colors.primary100,
      shape: shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(theme.sizes.p4),
          ),
      value: value,
      side: side ?? BorderSide(color: theme.colors.neuTralVariant50, width: 2),
      onChanged: onChanged,
    );
  }
}
