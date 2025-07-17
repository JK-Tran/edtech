import 'package:edtech/app/components/error/error_widget.dart';
import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

import '../../error/error_response.dart';

class CommonFirstPageErrorIndicator extends StatelessWidget {
  const CommonFirstPageErrorIndicator({
    this.appException,
    super.key,
  });

  final AppException? appException;

  @override
  Widget build(BuildContext context) {
    if (appException == null) {
      return CustomErrorWidget(
        message: context.l10n.common_error,
        child: Assets.illustration.errorResponse.image(
          width: Dimens.d250.responsive(),
          height: Dimens.d250.responsive(),
        ),
      );
    }

    return AppExceptionWidget(appException: appException!);
  }
}
