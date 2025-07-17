import 'package:edtech/app/components/shimmer/shimmer_progress.dart';
import 'package:edtech/core/utils/view_utils.dart';
import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.drawer,
    this.backgroundColor,
    this.hideKeyboardWhenTouchOutside = false,
    this.bottomNavigationBar,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.resizeToAvoidBottomInset,
    super.key,
  });

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final bool hideKeyboardWhenTouchOutside;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final bool? resizeToAvoidBottomInset;
  final Widget? bottomNavigationBar;
  @override
  Widget build(BuildContext context) {
    final Scaffold scaffold = Scaffold(
      backgroundColor: backgroundColor,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Shimmer(child: body),
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
      floatingActionButton: floatingActionButton,
    );

    return hideKeyboardWhenTouchOutside
        ? GestureDetector(
            onTap: () => ViewUtils.hideKeyboard(context),
            child: scaffold,
          )
        : scaffold;
  }
}
