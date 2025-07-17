import 'package:edtech/app/components/app_bar/shared_appbar.dart';
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    this.onLeadingPressed,
    this.onTitlePressed,
    this.leading,
    this.titleType = AppBarTitle.text,
    this.centerTitle = true,
    this.elevation = 0,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.title,
    this.transparentAppBar = false,
    this.titleText,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.excludeHeaderSemantics = false,
    this.bottom,
    this.height,
    this.shape,
    this.backgroundColor,
    this.foregroundColor,
    this.shadowColor,
    this.iconTheme,
    this.actionsIconTheme,
    this.titleTextStyle,
    this.flexibleSpace,
    this.leadingWidth,
    this.primary = true,
    this.leadingIconColor,
    this.systemOverlayStyle,
    super.key,
  });

  final VoidCallback? onLeadingPressed;
  final VoidCallback? onTitlePressed;

  final AppBarTitle titleType;

  final bool automaticallyImplyLeading;
  final bool transparentAppBar;
  final bool centerTitle;
  final bool primary;
  final bool excludeHeaderSemantics;

  final Color? leadingIconColor;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? shadowColor;

  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;

  final Widget? leading;
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

  final PreferredSizeWidget? bottom;
  final ShapeBorder? shape;

  final SystemUiOverlayStyle? systemOverlayStyle;

  @override
  Size get preferredSize => Size.fromHeight(
        height ?? kToolbarHeight + (bottom?.preferredSize.height ?? 0),
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      toolbarHeight: preferredSize.height,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      iconTheme: iconTheme,
      primary: primary,
      bottom: bottom,
      shape: shape,
      actionsIconTheme: actionsIconTheme,
      flexibleSpace: flexibleSpace,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      leadingWidth: leadingWidth,
      systemOverlayStyle: systemOverlayStyle,
      actions: actions,
      automaticallyImplyLeading: automaticallyImplyLeading,
      excludeHeaderSemantics: excludeHeaderSemantics,
      leading: leading,
      centerTitle: centerTitle,
      title: GestureDetector(
        onTap: onTitlePressed,
        behavior: HitTestBehavior.translucent,
        child: title ??
            (titleType == AppBarTitle.text
                ? Text(
                    titleText ?? '',
                    style: titleTextStyle ??
                        context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: context.colorScheme.onSurface,
                        ),
                  )
                : titleType == AppBarTitle.logo
                    ? _buildIcon(Assets.icons.iconAntoreeRounded)
                    : null),
      ),
    );
  }

  Widget _buildIcon(SvgGenImage svg) {
    return svg.svg(
      color: leadingIconColor,
      width: Dimens.d24.responsive(),
      height: Dimens.d24.responsive(),
    );
  }
}
