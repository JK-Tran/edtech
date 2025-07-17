import 'package:edtech/core/resource/theme/data/theme_data_container.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class AppRadio<T> extends StatelessWidget {
  const AppRadio({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
  });
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  @override
  Widget build(BuildContext context) {
    final ThemeDataContainer theme = context.themeResolver;

    return Radio<T>(
      focusColor: theme.colors.primary40,
      activeColor: theme.colors.primary40,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
