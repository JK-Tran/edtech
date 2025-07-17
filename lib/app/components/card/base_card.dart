import 'package:edtech/app/components/button/bounceable.dart';
import 'package:edtech/app/components/selection/app_checkbox.dart';
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard({
    required this.content,
    this.leading,
    this.leadingGap = 24,
    this.trailing,
    this.trailingGap = 24,
    this.height,
    this.padding,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.contentHorizontalAlignment = CrossAxisAlignment.start,
    this.contentVerticalAlignment = MainAxisAlignment.start,
    this.selectalbe = false,
    this.isSelected = false,
    this.onSelected,
    this.onTap,
    this.decoration,
    this.aboveLeading,
    this.belowLeading,
    super.key,
  });

  final VoidCallback? onTap;
  final Widget? leading;
  final Widget? aboveLeading;
  final Widget? belowLeading;
  final double leadingGap;
  final List<Widget> content;
  final double trailingGap;
  final Widget? trailing;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final CrossAxisAlignment crossAxisAlignment;
  final CrossAxisAlignment contentHorizontalAlignment;
  final MainAxisAlignment contentVerticalAlignment;
  final bool selectalbe;
  final bool isSelected;
  final ValueChanged<bool?>? onSelected;
  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onTap,
      child: Stack(
        children: <Widget>[
          Container(
            height: height,
            padding: padding ?? context.insets.p16,
            decoration: decoration ??
                BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: BorderRadius.circular(Dimens.d24.responsive()),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 9,
                      color:
                          context.colorScheme.outline.withValues(alpha: 0.12),
                    ),
                    BoxShadow(
                      offset: const Offset(0, 22),
                      blurRadius: 136,
                      color:
                          context.colorScheme.outline.withValues(alpha: 0.0296),
                    ),
                  ],
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (aboveLeading != null) ...[
                  aboveLeading!,
                  const SizedBox(height: 4),
                ],
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: crossAxisAlignment,
                  children: <Widget>[
                    if (leading != null) ...<Widget>[
                      leading!,
                      SizedBox(width: leadingGap),
                    ],
                    Expanded(
                      child: Column(
                        crossAxisAlignment: contentHorizontalAlignment,
                        mainAxisAlignment: contentVerticalAlignment,
                        children: content,
                      ),
                    ),
                    if (trailing != null) ...<Widget>[
                      SizedBox(width: trailingGap),
                      trailing!,
                    ],
                  ],
                ),
                if (belowLeading != null) ...[
                  const SizedBox(height: 4),
                  belowLeading!,
                ],
              ],
            ),
          ),
          if (selectalbe)
            Align(
              alignment: Alignment.topRight,
              child: AppCheckbox(
                onChanged: onSelected,
                value: isSelected,
              ),
            ),
        ],
      ),
    );
  }
}
