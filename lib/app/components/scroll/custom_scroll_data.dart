import 'package:flutter/material.dart';

import 'custome_scroll_controller.dart';

class CustomScrollProviderData extends InheritedWidget {
  const CustomScrollProviderData({
    required super.child,
    required this.scrollControllers,
    super.key,
  });
  final List<CustomScrollController> scrollControllers;

  static CustomScrollProviderData of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CustomScrollProviderData>()!;
  }

  @override
  bool updateShouldNotify(CustomScrollProviderData oldWidget) {
    return scrollControllers != oldWidget.scrollControllers;
  }
}
