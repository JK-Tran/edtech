import 'package:edtech/core/resource/theme/data/theme_data_container.dart';
import 'package:flutter/material.dart';

class ThemeResolver extends InheritedTheme {
  const ThemeResolver({
    required super.child,
    required this.data,
    super.key,
  });

  final ThemeDataContainer data;

  static ThemeDataContainer of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeResolver>()!.data;
  }

  @override
  bool updateShouldNotify(covariant ThemeResolver oldWidget) {
    return data != oldWidget.data;
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return ThemeResolver(
      data: data,
      child: child,
    );
  }
}
