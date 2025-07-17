import 'dart:async';

import 'package:edtech/app/components/app_bar/shared_appbar.dart';
import 'package:edtech/app/components/app_bar/shared_sliver_appbar.dart';
import 'package:edtech/app/components/border/borer_outline.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:edtech/core/utils/widget_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SliverSearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SliverSearchAppBar({
    required this.onSearch,
    required this.onCancelSearch,
    required this.hintText,
    required this.title,
    this.onTitleTap,
    this.bottom,
    this.shape,
    this.pinned = true,
    this.floating = false,
    this.snap = false,
    this.stretch = false,
    this.expandedHeight,
    this.flexibleSpace,
    this.collapsedHeight,
    this.forceElevated = false,
    this.onLeadingPressed,
    this.onTitlePressed,
    this.leadingIcon = LeadingIcon.back,
    this.titleType = AppBarTitle.text,
    this.centerTitle = true,
    this.elevation = 0,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.transparentAppBar = false,
    this.titleText,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.excludeHeaderSemantics = false,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
    this.shadowColor,
    this.iconTheme,
    this.actionsIconTheme,
    this.titleTextStyle,
    this.leadingWidth,
    this.primary = true,
    this.leadingIconColor,
    this.systemOverlayStyle,
    super.key,
  });

  final Function(String value) onSearch;
  final Function(String value) onCancelSearch;
  final VoidCallback? onTitleTap;
  final String hintText;

  final VoidCallback? onLeadingPressed;
  final VoidCallback? onTitlePressed;

  final LeadingIcon leadingIcon;
  final AppBarTitle titleType;

  final bool automaticallyImplyLeading;
  final bool transparentAppBar;
  final bool centerTitle;
  final bool primary;
  final bool excludeHeaderSemantics;
  final bool pinned;
  final bool floating;
  final bool snap;
  final bool stretch;
  final bool forceElevated;

  final Color? leadingIconColor;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? shadowColor;

  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;

  final Widget? title;
  final Widget? flexibleSpace;
  final List<Widget>? actions;

  final String? titleText;
  final TextStyle? titleTextStyle;

  final double? titleSpacing;
  final double? elevation;
  final double? leadingWidth;
  final double? height;
  final double bottomOpacity;
  final double toolbarOpacity;
  final double? expandedHeight;
  final double? collapsedHeight;

  final PreferredSizeWidget? bottom;
  final ShapeBorder? shape;
  final SystemUiOverlayStyle? systemOverlayStyle;

  @override
  Size get preferredSize => Size.fromHeight(
        height ?? kToolbarHeight + (bottom?.preferredSize.height ?? 0),
      );

  @override
  State<SliverSearchAppBar> createState() => _SliverSearchAppBarState();
}

class _SliverSearchAppBarState extends State<SliverSearchAppBar> {
  late TextEditingController textEditingController;
  bool _searching = false;
  Timer? _debounce;
  String _previousValue = '';

  @override
  void initState() {
    textEditingController = TextEditingController()
      ..addListener(() {
        if (_debounce?.isActive ?? false) {
          _debounce?.cancel();
        }
        _debounce = Timer(const Duration(milliseconds: 500), () {
          _onSearch();
          _previousValue = textEditingController.text;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SharedSliverAppBar(
      leadingIcon: _searching ? LeadingIcon.back : LeadingIcon.none,
      titleSpacing: _searching ? 0 : null,
      bottom: widget.bottom,
      shape: widget.shape,
      pinned: widget.pinned,
      floating: widget.floating,
      snap: widget.snap,
      stretch: widget.stretch,
      expandedHeight: widget.expandedHeight,
      centerTitle: widget.centerTitle,
      collapsedHeight: widget.collapsedHeight,
      elevation: widget.elevation,
      height: widget.height,
      flexibleSpace: widget.flexibleSpace,
      actionsIconTheme: widget.actionsIconTheme,
      bottomOpacity: widget.bottomOpacity,
      excludeHeaderSemantics: widget.excludeHeaderSemantics,
      forceElevated: widget.forceElevated,
      foregroundColor: widget.foregroundColor,
      iconTheme: widget.iconTheme,
      leadingIconColor: widget.leadingIconColor,
      leadingWidth: widget.leadingWidth,
      onTitlePressed: widget.onTitlePressed,
      primary: widget.primary,
      shadowColor: widget.shadowColor,
      systemOverlayStyle: widget.systemOverlayStyle,
      titleText: widget.titleText,
      titleTextStyle: widget.titleTextStyle,
      titleType: widget.titleType,
      toolbarOpacity: widget.toolbarOpacity,
      transparentAppBar: widget.transparentAppBar,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      backgroundColor: widget.backgroundColor,
      // elevation: 2,
      title: AnimatedCrossFade(
        duration: const Duration(milliseconds: 300),
        sizeCurve: Curves.fastOutSlowIn,
        crossFadeState:
            _searching ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        firstChild: GestureDetector(
          onTap: widget.onTitleTap,
          onDoubleTap: () {
            setState(() => _searching = true);
          },
          child: widget.title,
        ),
        secondChild: BorderOutline(
          border: Border.all(color: context.colorScheme.onSurface),
          padding: EdgeInsets.zero,
          child: TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(12, 4, 8, 8),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: context.colors.neuTral60,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      actions: <Widget>[
        if (_searching)
          context.gaps.gapW16
        else
          IconButton(
            onPressed: () {
              setState(() => _searching = true);
              widget.onSearch(textEditingController.text);
            },
            icon: Assets.icons.iconSearch
                .svg(color: context.colorScheme.onSurface),
          ).paddingOnly(right: Dimens.d16),
      ],
      onLeadingPressed: _searching
          ? () {
              _cancelSearch();
              setState(() => _searching = false);
            }
          : null,
    );
  }

  void _onSearch() {
    if (_previousValue != textEditingController.text) {
      widget.onSearch(textEditingController.text);
    }
  }

  void _cancelSearch() {
    widget.onCancelSearch(textEditingController.text);
  }
}
