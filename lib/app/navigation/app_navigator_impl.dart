import 'dart:async';
import 'package:edtech/app/components/dialog/bottom_dialog.dart';
import 'package:edtech/app/components/dialog/smooth_dialog.dart';
import 'package:edtech/app/components/popup/custom_dialog.dart';
import 'package:edtech/app/navigation/base/base_popup_info_mapper.dart';
import 'package:edtech/app/navigation/routes/routes.dart';
import 'package:edtech/core/constants/duration_constants.dart';
import 'package:edtech/core/helper/function/function.dart';
import 'package:edtech/core/mixin/log_mixin.dart';
import 'package:edtech/core/model/typedef.dart';
import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/navigation/app_popup_info.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/object_utils.dart';
import 'package:edtech/core/utils/view_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppNavigator)
class AppNavigatorImpl extends AppNavigator with LogMixin {
  AppNavigatorImpl(
    this._appPopupInfoMapper,
  );

  final BasePopupInfoMapper _appPopupInfoMapper;
  final _shownPopups = <AppPopupInfo, Completer<dynamic>>{};

  m.BuildContext get _rootRouterContext =>
      router.routerDelegate.navigatorKey.currentContext!;

  @override
  GoRouter get router => Routes.router;

  @override
  bool get canPop => router.canPop();

  @override
  void go(String location, {Object? extra}) {
    _rootRouterContext.goRouter.go(location, extra: extra);
  }

  @override
  void goNamed(
    String name, {
    QueryParams pathParameters = const {},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    _rootRouterContext.goRouter.goNamed(
      name,
      queryParameters: queryParameters,
      pathParameters: pathParameters,
      extra: extra,
    );
  }

  @override
  String namedLocation(
    String name, {
    QueryParams pathParameters = const {},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
  }) {
    return _rootRouterContext.goRouter.namedLocation(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
    );
  }

  @override
  void pop<T extends Object?>(T? result, {bool rootNavigator = false}) {
    rootNavigator
        ? Navigator.of(_rootRouterContext, rootNavigator: true).pop<T>(result)
        : _rootRouterContext.goRouter.pop<T>(result);
  }

  @override
  Future<T?> push<T extends Object?>(String location, {Object? extra}) {
    return _rootRouterContext.goRouter.push<T>(location, extra: extra);
  }

  @override
  Future<T?> pushNamed<T extends Object?>(
    String name, {
    QueryParams pathParameters = const {},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return _rootRouterContext.goRouter.pushNamed<T>(
      name,
      queryParameters: queryParameters,
      pathParameters: pathParameters,
      extra: extra,
    );
  }

  @override
  void refresh() {
    _rootRouterContext.goRouter.refresh();
  }

  @override
  void replace(String location, {Object? extra}) {
    _rootRouterContext.goRouter.replace(location, extra: extra);
  }

  @override
  void replaceNamed(
    String name, {
    QueryParams pathParameters = const {},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    _rootRouterContext.goRouter.replaceNamed(
      name,
      queryParameters: queryParameters,
      pathParameters: pathParameters,
      extra: extra,
    );
  }

  @override
  Future<T?> showDefaultDialog<T extends Object?>({
    required Widget title,
    required Widget content,
    Widget? asset,
    List<Widget>? actions,
    double radius = Dimens.d12,
    double? dialogWidth,
    bool useRootNavigator = true,
    bool barrierDismissible = true,
    bool useSafeArea = true,
    bool isCloseIcon = true,
    bool centerAsset = false,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisAlignment actionsAlignment = MainAxisAlignment.end,
    EdgeInsetsGeometry actionsPadding = const EdgeInsets.fromLTRB(
      Dimens.d24,
      Dimens.zero,
      Dimens.d24,
      Dimens.d16,
    ),
    Func0<void>? onDismiss,
    Color? backgroundColor,
  }) {
    return m
        .showDialog<T>(
      context: _rootRouterContext,
      useRootNavigator: useRootNavigator,
      barrierDismissible: barrierDismissible,
      useSafeArea: useSafeArea,
      builder: (context) => CustomDialog(
        title: title,
        content: content,
        asset: asset,
        dialogWidth: dialogWidth,
        centerAsset: centerAsset,
        actions: actions,
        actionsAlignment: actionsAlignment,
        actionsPadding: actionsPadding,
        crossAxisAlignment: crossAxisAlignment,
        isCloseIcon: isCloseIcon,
        mainAxisAlignment: mainAxisAlignment,
        radius: radius,
        backgroundColor: backgroundColor,
      ),
    )
        .whenComplete(() {
      if (onDismiss != null) {
        onDismiss.call();
      }
    });
  }

  @override
  Future<T?> showAppDialog<T extends Object?>(
    AppPopupInfo appPopupInfo, {
    bool barrierDismissible = true,
    bool useSafeArea = false,
    bool useRootNavigator = true,
    Func0<void>? onDismiss,
  }) {
    if (_shownPopups.containsKey(appPopupInfo)) {
      logD('Dialog $appPopupInfo already shown');

      return Future.value(_shownPopups[appPopupInfo]!.future.safeCast());
    }
    _shownPopups[appPopupInfo] = Completer<T?>();

    return m
        .showDialog<T>(
      context: _rootRouterContext,
      builder: (_) => m.PopScope(
        onPopInvokedWithResult: (didPop, _) async {
          logD('Dialog $appPopupInfo dismissed');
          _shownPopups.remove(appPopupInfo);
        },
        child: _appPopupInfoMapper.map(appPopupInfo, this),
      ),
      useRootNavigator: useRootNavigator,
      barrierDismissible: barrierDismissible,
      useSafeArea: useSafeArea,
    )
        .then((value) {
      logD('Dialog $appPopupInfo dismissed');
      _shownPopups.remove(appPopupInfo);

      return value;
    }).whenComplete(() {
      if (onDismiss != null) {
        onDismiss.call();
      }
    });
  }

  @override
  Future<T?> showGeneralDialog<T extends Object?>(
    AppPopupInfo appPopupInfo, {
    Widget Function(
      BuildContext p1,
      Animation<double> p2,
      Animation<double> p3,
      Widget p4,
    )? transitionBuilder,
    Duration transitionDuration =
        DurationConstants.defaultGeneralDialogTransitionDuration,
    bool barrierDismissible = true,
    Color barrierColor = const Color(0x80000000),
    bool useRootNavigator = true,
  }) {
    if (_shownPopups.containsKey(appPopupInfo)) {
      logD('Dialog $appPopupInfo already shown');

      return Future.value(_shownPopups[appPopupInfo]!.future.safeCast());
    }
    _shownPopups[appPopupInfo] = Completer<T?>();

    return m.showGeneralDialog<T>(
      context: _rootRouterContext,
      barrierColor: barrierColor,
      useRootNavigator: useRootNavigator,
      barrierDismissible: barrierDismissible,
      pageBuilder: (
        m.BuildContext context,
        m.Animation<double> animation1,
        m.Animation<double> animation2,
      ) =>
          m.PopScope(
        onPopInvokedWithResult: (didPop, _) async {
          logD('Dialog $appPopupInfo dismissed');
          _shownPopups.remove(appPopupInfo);
        },
        child: _appPopupInfoMapper.map(appPopupInfo, this),
      ),
      transitionBuilder: transitionBuilder,
      transitionDuration: transitionDuration,
    );
  }

  @override
  Future<T?> showModalBottomSheet<T extends Object?>({
    required String title,
    required Widget child,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    Color barrierColor = Colors.black54,
    Color? backgroundColor,
    double topRadius = Dimens.d16,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    EdgeInsets padding = const EdgeInsets.fromLTRB(16, 8, 16, 0),
  }) {
    return m.showModalBottomSheet<T>(
      context: _rootRouterContext,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      useRootNavigator: useRootNavigator,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      barrierColor: barrierColor,
      useSafeArea: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(topRadius)),
      ),
      builder: (_) => AppBottomSheet(
        navigator: this,
        title: title,
        crossAxisAlignment: crossAxisAlignment,
        padding: padding,
        child: child,
      ),
    );
  }

  @override
  void showSuccessSnackBar(String message, {Duration? duration}) {
    ViewUtils.showAppSnackBar(
      _rootRouterContext,
      message,
      duration: duration,
    );
  }

  @override
  void showErrorSnackBar(String message, {Duration? duration}) {
    ViewUtils.showAppSnackBar(
      _rootRouterContext,
      message,
      duration: duration,
    );
  }

  @override
  Future<T?> showSmoothDialog<T extends Object?>({
    required String path,
    required String title,
    required String content,
    bool barrierDismissible = true,
    bool useSafeArea = false,
    bool useRootNavigator = true,
    double? dialogHeight,
    double? dialogWidth,
    double imageHeight = 150,
    double imageWidth = 150,
    VoidCallback? submit,
    Function? cancel,
    Function? onDismiss,
    Color? backgroundcolor,
    ButtonConfig? buttonConfig,
    BorderRadius? borderRadius,
    BorderRadius? buttonBorderRadius,
    SmoothMode mode = SmoothMode.lottie,
    DialogType dialogType = DialogType.confirmation,
  }) {
    buttonConfig ??= ButtonConfig();
    buttonBorderRadius ??= BorderRadius.circular(Dimens.d16);

    return m
        .showDialog<T>(
      context: _rootRouterContext,
      useRootNavigator: useRootNavigator,
      barrierDismissible: barrierDismissible,
      useSafeArea: useSafeArea,
      builder: (BuildContext context) {
        return SmoothDialog(
          mode: mode,
          path: path,
          title: title,
          content: content,
          backgroundcolor: backgroundcolor,
          borderRadius: borderRadius,
          buttonBorderRadius: buttonBorderRadius,
          buttonConfig: buttonConfig,
          cancel: cancel,
          dialogHeight: dialogHeight,
          dialogType: dialogType,
          dialogWidth: dialogWidth,
          imageHeight: imageHeight,
          imageWidth: imageHeight,
          submit: submit,
        );
      },
    )
        .whenComplete(() {
      if (onDismiss != null) {
        (onDismiss as Function())();
      }
    });
  }
}
