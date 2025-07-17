import 'package:edtech/app/components/app_icon.dart';
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:edtech/core/utils/view_utils.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    required this.title,
    required this.content,
    this.asset,
    this.negative,
    this.positive,
    this.dialogWidth,
    this.actions,
    this.backgroundColor,
    this.radius = Dimens.d24,
    this.isCloseIcon = true,
    this.centerAsset = false,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.actionsAlignment = MainAxisAlignment.end,
    this.actionsPadding = const EdgeInsets.fromLTRB(
      Dimens.d24,
      Dimens.zero,
      Dimens.d24,
      Dimens.d16,
    ),
    super.key,
  });

  final Widget title;

  final Widget content;

  final List<Widget>? actions;

  final Widget? asset;

  final Widget? negative;

  final Widget? positive;

  final double? dialogWidth;

  final double radius;

  final bool isCloseIcon;
  final bool centerAsset;

  final Color? backgroundColor;

  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisAlignment actionsAlignment;
  final EdgeInsetsGeometry actionsPadding;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backgroundColor ?? AppColors.primary100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius.responsive()),
      ),
      elevation: 0,
      scrollable: true,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      contentPadding: EdgeInsets.zero,
      content: GestureDetector(
        onTap: () => ViewUtils.hideKeyboard(context),
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            SizedBox(
              width: dialogWidth ?? context.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.d24,
                  vertical: Dimens.d16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: crossAxisAlignment,
                  mainAxisAlignment: mainAxisAlignment,
                  children: <Widget>[
                    if (asset != null && !centerAsset) ...<Widget>[
                      Center(child: asset),
                      const SizedBox(height: Dimens.d24),
                    ],
                    DefaultTextStyle(
                      style: context.textTheme.titleLarge!
                          .copyWith(fontSize: 22)
                          .weight600,
                      child: title,
                    ),
                    const SizedBox(height: Dimens.d16),
                    if (asset != null && centerAsset) ...<Widget>[
                      Center(child: asset),
                      const SizedBox(height: Dimens.d16),
                    ],
                    DefaultTextStyle(
                      style: context.textTheme.bodyMedium!,
                      child: content,
                    ),
                  ],
                ),
              ),
            ),
            if (isCloseIcon)
              Positioned(
                right: 0,
                child: InkWell(
                  onTap: () =>
                      Navigator.of(context, rootNavigator: true).pop(false),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 22,
                      horizontal: 24,
                    ),
                    child: AppIcon(
                      Assets.icons.iconClose,
                      size: Dimens.d24,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      actions: actions,
      actionsPadding: actionsPadding,
      actionsAlignment: actionsAlignment,
    );
  }
}
