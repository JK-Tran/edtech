import 'package:edtech/app/components/error/error_widget.dart';
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class CommonNoItemsFoundIndicator extends StatelessWidget {
  const CommonNoItemsFoundIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomErrorWidget(
      message: context.l10n.cant_find,
      child: context.isTablet
          ? Assets.illustration.notFound3d.image(
              width: Dimens.d250.responsive(),
              height: Dimens.d250.responsive(),
            )
          : null,
    );
  }
}
