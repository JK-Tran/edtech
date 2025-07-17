import 'dart:async';

import 'package:edtech/app/components/app_bar/shared_appbar.dart';
import 'package:edtech/app/components/border/borer_outline.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:edtech/core/utils/widget_utils.dart';
import 'package:flutter/material.dart';

class SharedSearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SharedSearchAppBar({
    required this.onSearch,
    required this.onCancelSearch,
    required this.hintText,
    required this.title,
    this.onTitleTap,
    this.canBack = true,
    super.key,
  });

  final Function(String value) onSearch;
  final Function(String value) onCancelSearch;
  final VoidCallback? onTitleTap;
  final String hintText;
  final Widget title;
  final bool canBack;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<SharedSearchAppBar> createState() => _SharedSearchAppBarState();
}

class _SharedSearchAppBarState extends State<SharedSearchAppBar> {
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
    return SharedAppbar(
      leadingIcon: _searching ? LeadingIcon.back : LeadingIcon.none,
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
              contentPadding: const EdgeInsets.fromLTRB(12, 4, 12, 8),
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
      titleSpacing: _searching ? 0 : null,
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
