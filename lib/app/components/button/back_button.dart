import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class SharedBackButton extends StatelessWidget {
  const SharedBackButton({
    this.onPressed,
    this.color,
    super.key,
  });

  final void Function()? onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: IconButton(
        icon: Assets.icons.iconArrowLeft.svg(
          height: Dimens.d24.responsive(),
          width: Dimens.d24.responsive(),
          color: color ?? context.colorScheme.onSurface,
        ),
        onPressed: onPressed ?? () => context.goRouter.pop(),
      ),
    );
  }
}
