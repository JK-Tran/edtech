import 'package:edtech/app/base/bloc/common/common_bloc.dart';
import 'package:edtech/app/base/bloc/common/common_event.dart';
import 'package:edtech/app/components/popup/common_dialog.dart';
import 'package:edtech/app/components/popup/popup_button.dart';
import 'package:edtech/app/navigation/base/base_popup_info_mapper.dart';
import 'package:edtech/core/helper/function/function.dart';
import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/navigation/app_popup_info.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/resources/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BasePopupInfoMapper)
class AppPopupInfoMapper extends BasePopupInfoMapper {
  @override
  Widget map(AppPopupInfo appPopupInfo, AppNavigator navigator) {
    return appPopupInfo.when(
      confirmDialog: (title, message, image, onPressed) {
        return CommonDialog.app(
          title: title,
          asset: image,
          actions: [
            PopupButton.negative(
              text: S.current.common__action__cancel,
              color: AppColors.neuTral10,
              onPressed: Func0(() => navigator.pop(false, rootNavigator: true)),
            ),
            PopupButton.positive(
              text: S.current.common__action__confirm,
              onPressed: onPressed ??
                  Func0(() => navigator.pop(true, rootNavigator: true)),
            ),
          ],
          message: message,
        );
      },
      alertDialog: (
        String title,
        String message,
        Widget? asset,
        Func0<void>? onPressed,
      ) {
        return CommonDialog.app(
          title: title,
          asset: asset,
          actions: [
            PopupButton.positive(
              text: S.current.i_got_it,
              onPressed: onPressed ??
                  Func0(() => navigator.pop(true, rootNavigator: true)),
            ),
          ],
          message: message,
          isCloseIcon: false,
        );
      },
      warningDialog: (
        String title,
        String message,
        Widget? asset,
        Func0<void>? onPressed,
      ) {
        return CommonDialog.app(
          title: title,
          asset: asset,
          message: message,
          actions: [
            PopupButton.negative(
              text: S.current.common__action__cancel,
              color: AppColors.neuTral10,
              onPressed: Func0(() => navigator.pop(false, rootNavigator: true)),
            ),
            PopupButton.positive(
              text: S.current.common__action__confirm,
              color: AppColors.error40,
              onPressed: onPressed ??
                  Func0(() => navigator.pop(true, rootNavigator: true)),
            ),
          ],
        );
      },
      errorWithRetryDialog: (title, message, onRetryPressed) {
        return CommonDialog.app(
          asset: Assets.illustration.noInternet.image(width: Dimens.d250),
          title: message,
          actions: [
            PopupButton.negative(
              text: S.current.common__action__cancel,
              onPressed: Func0(() => navigator.pop(false, rootNavigator: true)),
            ),
            PopupButton.positive(
              text: S.current.retry,
              onPressed: onRetryPressed ??
                  Func0(() => navigator.pop(true, rootNavigator: true)),
            ),
          ],
          isCloseIcon: false,
        );
      },
      requiredLoginDialog: () => CommonDialog.app(
        title: S.current.dialog__message__token_expired_title,
        message: S.current.dialog__message__token_expired_message,
        asset: Assets.illustration.requestFail.image(width: Dimens.d250),
        isCloseIcon: false,
        actions: [
          PopupButton.positive(
            text: S.current.login,
            onPressed: Func0(() async {
              GetIt.instance
                  .get<CommonBloc>()
                  .add(const ForceLogoutButtonPressed());
              navigator.pop(true, rootNavigator: true);
            }),
          ),
        ],
      ),
      // customErrorDialog: (title, message, image, onPressed) => CommonDialog.app(
      //   title: title,
      //   message: message,
      //   asset: Image.asset(image, width: Dimens.d120, height: Dimens.d120),
      //   actions: [
      //     PopupButton.positive(
      //       text: S.current.i_got_it,
      //       onPressed: onPressed ??
      //           Func0(() => navigator.pop(true, rootNavigator: true)),
      //     ),
      //   ],
      //   isCloseIcon: false,
      // ),
    );
  }
}
