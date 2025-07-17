import 'dart:io';

import 'package:edtech/app/components/app_icon.dart';
import 'package:edtech/app/components/button/elevated_button.dart';
import 'package:edtech/app/components/button/text_button.dart';
import 'package:edtech/app/components/popup/popup_button.dart';
import 'package:edtech/app/components/popup/popup_type.dart';
import 'package:edtech/core/helper/function/function.dart';
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/app_text.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/collection_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:edtech/core/utils/string_utils.dart';
import 'package:edtech/core/utils/view_utils.dart';
import 'package:edtech/resources/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({
    this.commonPopupType = PopupType.adaptive,
    this.actions = const <PopupButton>[],
    this.title,
    this.message,
    this.asset,
    this.isCloseIcon = true,
    super.key,
  });

  const CommonDialog.android({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          commonPopupType: PopupType.android,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  const CommonDialog.ios({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          commonPopupType: PopupType.ios,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  const CommonDialog.adaptive({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          commonPopupType: PopupType.adaptive,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  const CommonDialog.app({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Widget? asset,
    bool isCloseIcon = true,
    Key? key,
  }) : this(
          commonPopupType: PopupType.app,
          actions: actions,
          title: title,
          message: message,
          asset: asset,
          isCloseIcon: isCloseIcon,
          key: key,
        );

  final PopupType commonPopupType;
  final List<PopupButton> actions;
  final String? title;
  final String? message;
  final Widget? asset;
  final bool isCloseIcon;

  @override
  Widget build(BuildContext context) {
    switch (commonPopupType) {
      case PopupType.android:
        return _buildAndroidDialog(context);
      case PopupType.ios:
        return _buildIosDialog();
      case PopupType.adaptive:
        return Platform.isIOS
            ? _buildIosDialog()
            : _buildAndroidDialog(context);
      case PopupType.app:
        return _buildAppDialog(context);
    }
  }

  Widget _buildAndroidDialog(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.primary100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.d24.responsive()),
      ),
      elevation: 0,
      insetPadding: EdgeInsets.symmetric(
        horizontal: Dimens.d24.responsive(
          tablet: context.isLandscape ? null : Dimens.d68,
          ultraTablet: context.isLandscape ? null : Dimens.d96,
        ),
        vertical: Dimens.d22.responsive(
          tablet: context.isLandscape ? null : Dimens.d66,
          ultraTablet: context.isLandscape ? null : Dimens.d88,
        ),
      ),
      actions: actions
          .map(
            (button) => button.when(
              negative: (text, onPressed, color) {
                return TextButton(
                  onPressed: button.onPressed?.function,
                  child: Text(
                    button.text ?? S.current.common__action__cancel,
                  ),
                );
              },
              positive: (text, onPressed, color) {
                return AppElevatedButton(
                  expandedWith: actions.length == 1,
                  onPressed: button.onPressed?.function,
                  child: Text(
                    button.text ?? S.current.common__action__confirm,
                  ),
                );
              },
              base: (
                String? text,
                Func0<void>? onPressed,
                Color? color,
                bool isDefault,
              ) {
                return const SizedBox();
              },
            ),
          )
          .toList(growable: false),
      title: title != null
          ? AppText.t0(
              title ?? '',
              color: ColorPaletteData.current.secondary40,
            )
          : const SizedBox.shrink(),
      content: message != null
          ? AppText.b1(
              message ?? '',
              color: ColorPaletteData.current.primary40,
            )
          : const SizedBox.shrink(),
    );
  }

  Widget _buildIosDialog() {
    return CupertinoAlertDialog(
      actions: actions
          .map(
            (button) => button.maybeWhen(
              orElse: () {
                return CupertinoDialogAction(
                  onPressed: button.onPressed?.function,
                  child: AppText.t1(
                    button.text ?? S.current.ok,
                    color: ColorPaletteData.current.primary40,
                  ),
                );
              },
            ),
          )
          .toList(growable: false),
      title: title != null
          ? AppText.t0(
              title ?? '',
              color: ColorPaletteData.current.secondary40,
            )
          : null,
      content: message != null
          ? AppText.b1(
              message ?? '',
              color: ColorPaletteData.current.primary40,
            )
          : null,
    );
  }

  Widget _buildAppDialog(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.d24.responsive()),
      ),
      insetPadding: EdgeInsets.symmetric(
        horizontal: Dimens.d24.responsive(
          tablet: context.isLandscape ? null : Dimens.d68,
          ultraTablet: context.isLandscape ? null : Dimens.d96,
        ),
        vertical: Dimens.d22.responsive(
          tablet: context.isLandscape ? null : Dimens.d66,
          ultraTablet: context.isLandscape ? null : Dimens.d88,
        ),
      ),
      contentPadding: EdgeInsets.zero,
      alignment: Alignment.center,
      elevation: 0,
      content: GestureDetector(
        onTap: () => ViewUtils.hideKeyboard(context),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: Dimens.d350.responsive(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.d16.responsive(),
                  vertical: Dimens.d16.responsive(),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (asset != null) ...[
                      Center(child: asset),
                      SizedBox(height: Dimens.d24.responsive()),
                    ],
                    if (!StringUtils.isNullOrBlank(title)) ...[
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: AppText.t0(
                          title!,
                          fontSize: 22,
                        ).weight600,
                      ),
                    ],
                    SizedBox(height: Dimens.d24.responsive()),
                    if (!StringUtils.isNullOrBlank(message)) ...[
                      AppText.b0(
                        message!,
                        maxLines: 6,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                    ],
                    SizedBox(height: Dimens.d24.responsive()),
                    Row(
                      children: actions
                          .map(
                            (button) => button.when(
                              negative: (text, onPressed, color) {
                                return Expanded(
                                  child: AppTextButton(
                                    onPressed: onPressed?.function,
                                    foregroundColor: color,
                                    child: Text(
                                      text ?? S.current.common__action__cancel,
                                    ),
                                  ),
                                );
                              },
                              positive: (text, onPressed, color) {
                                return Expanded(
                                  child: AppElevatedButton(
                                    expandedWith: actions.length == 1,
                                    borderRadius:
                                        BorderRadius.circular(Dimens.d16),
                                    onPressed: () {
                                      (onPressed as Func0<void>).call();
                                    },
                                    backgroundColor: color,
                                    child: Text(
                                      text ?? S.current.common__action__confirm,
                                    ),
                                  ),
                                );
                              },
                              base: (
                                String? text,
                                Func0<void>? onPressed,
                                Color? color,
                                bool isDefault,
                              ) {
                                return const Expanded(child: SizedBox());
                              },
                            ),
                          )
                          .toList(growable: false)
                          .applySeparator(
                            separator: SizedBox(width: Dimens.d16.responsive()),
                          ),
                    ),
                  ],
                ),
              ),
            ),
            if (isCloseIcon)
              Positioned(
                right: 12,
                top: 12,
                child: InkWell(
                  onTap: () =>
                      Navigator.of(context, rootNavigator: true).pop(false),
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
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
    );
  }
}
