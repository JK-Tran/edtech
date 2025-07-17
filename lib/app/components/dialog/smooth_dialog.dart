import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/utils/app_text.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:edtech/core/utils/widget_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class SmoothDialog extends StatelessWidget {
  const SmoothDialog({
    required this.path,
    required this.title,
    required this.content,
    required this.mode,
    this.submit,
    this.cancel,
    this.buttonConfig,
    this.dialogType = DialogType.confirmation,
    this.imageHeight = 150,
    this.imageWidth = 150,
    this.dialogHeight,
    this.dialogWidth,
    this.borderRadius,
    this.backgroundcolor,
    this.buttonBorderRadius,
    super.key,
  });

  /// lottie, network, asset, svg path
  /// default dialog mode is SmoothMode.lottie
  final String path;

  /// title dialog
  final String title;

  /// content dialog
  final String content;

  /// Dialog's height radius
  /// default is screen width .4
  final double? dialogHeight;

  /// Dialog's width radius
  /// default is screen width .7
  final double? dialogWidth;

  /// Dialog's image height radius
  /// default is 150
  final double imageHeight;

  /// Dialog's image width radius
  /// default is 150
  final double imageWidth;

  final VoidCallback? submit;

  final Function? cancel;

  final Color? backgroundcolor;

  final ButtonConfig? buttonConfig;

  /// Dialog's border radius
  /// default is 12
  final BorderRadius? borderRadius;

  /// button's border radius
  /// default is 12
  final BorderRadius? buttonBorderRadius;

  /// default dialog mode is SmoothMode.lottie
  final SmoothMode mode;

  /// default dialogType mode is SmoothMode.lottie
  final DialogType dialogType;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          backgroundcolor ?? context.theme.dialogTheme.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius:
            borderRadius ?? BorderRadius.circular(Dimens.d16.responsive()),
      ),
      contentPadding: context.insets.fromLTRB(
        Dimens.d16.responsive(),
        Dimens.d24.responsive(),
        Dimens.d16.responsive(),
        Dimens.d12.responsive(),
      ),
      content: SizedBox(
        width: dialogWidth ?? context.width * 0.7,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // SizedBox(height: 16),
            if (mode == SmoothMode.lottie) ...<Widget>[
              Center(
                child: Lottie.asset(
                  path,
                  width: imageWidth,
                  height: imageHeight,
                ),
              ),
            ] else if (mode == SmoothMode.asset) ...<Widget>[
              Image.asset(
                path,
                width: imageWidth,
                height: imageHeight,
              ),
            ] else if (mode == SmoothMode.svg) ...<Widget>[
              Center(
                child: SvgPicture.asset(
                  path,
                  width: imageWidth,
                  height: imageHeight,
                ),
              ),
            ] else ...<Widget>[
              Center(
                child: CachedNetworkImage(
                  imageUrl: path,
                  width: imageWidth,
                  height: imageHeight,
                  progressIndicatorBuilder: (
                    BuildContext context,
                    String url,
                    DownloadProgress downloadProgress,
                  ) =>
                      CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
                  errorWidget: (
                    BuildContext context,
                    String url,
                    dynamic error,
                  ) =>
                      const Icon(Icons.error),
                ),
              ),
            ],
            context.gaps.gapH8,
            AppText.t0(
              title,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w700,
            ),
            context.gaps.gapH8,
            AppText.b0(
              content,
              textAlign: TextAlign.center,
            ),
            if (dialogType == DialogType.confirmation ||
                dialogType == DialogType.error)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (dialogType == DialogType.confirmation) ...<Widget>[
                    Expanded(
                      child: Ink(
                        decoration: BoxDecoration(
                          color: buttonConfig?.buttonCancelColor ??
                              context.colorScheme.surface,
                          borderRadius: buttonBorderRadius,
                        ),
                        child: InkWell(
                          onTap: () {
                            if (cancel != null) {
                              (cancel! as Function())();
                            }
                            Navigator.of(context, rootNavigator: true)
                                .pop(context);
                          },
                          borderRadius: buttonBorderRadius,
                          child: Container(
                            padding: context.insets.v12.add(context.insets.h24),
                            child: AppText.l0(
                              buttonConfig?.dialogCancel ??
                                  context.l10n.common__action__cancel,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w700,
                              color: buttonConfig?.labelCancelColor ??
                                  context.colorScheme.onSurface,
                            ),
                          ),
                        ),
                      ),
                    ),
                    context.gaps.gapW4,
                  ],
                  Expanded(
                    child: Ink(
                      decoration: BoxDecoration(
                        color: buttonConfig?.buttonDoneColor ??
                            context.colorScheme.primary,
                        borderRadius: buttonBorderRadius,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(context);
                          if (submit != null) {
                            submit!();
                          }
                        },
                        borderRadius: buttonBorderRadius,
                        child: Container(
                          padding: context.insets.v12.add(context.insets.h24),
                          child: AppText.l0(
                            buttonConfig?.dialogDone ?? context.l10n.i_got_it,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w700,
                            color: buttonConfig?.labelDoneColor ??
                                context.colorScheme.surface,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ).paddingSymmetric(vertical: Dimens.d12.responsive()),
          ],
        ),
      ),
    );
  }
}
