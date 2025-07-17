import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'custom_scroll_data.dart';
import 'custome_scroll_controller.dart';

/// Allows to scroll by and any [PointerDeviceKind].
/// For instance [PointerDeviceKind.touch] will work on desktop web (DartPad).
class ScrollByAnyDeviceScrollBehaviour extends MaterialScrollBehavior {
  const ScrollByAnyDeviceScrollBehaviour();

  @override
  Set<PointerDeviceKind> get dragDevices => const {...PointerDeviceKind.values};

  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) =>
      child;
}

class CustomScrollProvider extends StatefulWidget {
  const CustomScrollProvider({
    required this.tabController,
    required this.parent,
    required this.child,
    super.key,
  });

  final TabController tabController;
  final ScrollController parent;
  final Widget child;

  @override
  State<CustomScrollProvider> createState() => CustomScrollProviderState();
}

class CustomScrollProviderState extends State<CustomScrollProvider> {
  late final List<CustomScrollController> scrollControllers;

  @override
  void initState() {
    super.initState();

    final activeIndex = widget.tabController.index;

    scrollControllers = List.generate(
      widget.tabController.length,
      (index) => CustomScrollController(
        isActive: index == activeIndex,
        parent: widget.parent,
        debugLabel: 'CustomScrollController/$index',
      ),
    );

    widget.tabController.addListener(() {
      changeActiveIndex(widget.tabController.index);
    });
  }

  @override
  void dispose() {
    for (final scrollController in scrollControllers) {
      scrollController.dispose();
    }

    super.dispose();
  }

  void changeActiveIndex(int value) {
    for (var index = 0; index < scrollControllers.length; index++) {
      final scrollController = scrollControllers[index];
      final isActive = index == value;
      scrollController.isActive = isActive;

      if (isActive) {
        scrollController.forceAttach();
      } else {
        scrollController.forceDetach();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollProviderData(
      scrollControllers: scrollControllers,
      child: widget.child,
    );
  }
}
