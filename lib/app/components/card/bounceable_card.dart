import 'package:edtech/app/components/button/bounceable.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class BouncingBaseCard extends StatelessWidget {
  const BouncingBaseCard({
    required this.icon,
    required this.header,
    this.onTap,
    this.height,
    this.padding,
    this.backgroundColor,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.trailing,
    this.headerFlex = false,
    this.borderRadius,
    this.shadowBox,
    this.withShadow = false,
    super.key,
  });

  final void Function()? onTap;
  final Widget icon;
  final List<Widget> header;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final MainAxisAlignment mainAxisAlignment;
  final Widget? trailing;
  final bool headerFlex;
  final bool withShadow;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? shadowBox;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: onTap != null ? 1 : 0.5,
      child: Bounceable(
        onTap: onTap,
        child: Container(
          height: headerFlex ? null : height ?? 76,
          padding: padding ??
              const EdgeInsets.symmetric(
                horizontal: Dimens.d16,
                vertical: Dimens.d8,
              ),
          decoration: BoxDecoration(
            color: backgroundColor ?? context.colors.primary100,
            borderRadius: borderRadius ?? BorderRadius.circular(Dimens.d12),
            boxShadow: withShadow
                ? shadowBox ??
                    <BoxShadow>[
                      BoxShadow(
                        offset: const Offset(0, 2),
                        blurRadius: 8,
                        color: context.colors.neuTral10.withValues(alpha: 0.15),
                      ),
                    ]
                : null,
          ),
          child: Row(
            children: <Widget>[
              icon,
              context.gaps.gapW24,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: mainAxisAlignment,
                  children: header,
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ),
    );
  }
}
