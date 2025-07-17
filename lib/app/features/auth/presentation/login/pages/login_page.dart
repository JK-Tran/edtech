import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:edtech/app/base/base_page_state.dart';
import 'package:edtech/app/components/common_scaffold.dart';
import 'package:edtech/app/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:edtech/app/features/auth/presentation/login/pages/widgets/login_body.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:edtech/core/utils/log_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends BasePageState<LoginPage, LoginBloc> {
  @override
  bool get isShowLoading => false;

  @override
  void initState() {
    super.initState();
    Log.d('Navigator: $navigator');
    initPlugin();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlugin() async {
    final TrackingStatus status =
        await AppTrackingTransparency.trackingAuthorizationStatus;
    // If the system can show an authorization request dialog
    if (status == TrackingStatus.notDetermined) {
      // Show a custom explainer dialog before the system dialog
      if (!mounted) {
        return;
      }
      await showCustomTrackingDialog(context);
      // Wait for dialog popping animation
      await Future<void>.delayed(const Duration(milliseconds: 200));
      // Request system's tracking authorization dialog

      await AppTrackingTransparency.requestTrackingAuthorization();
    }
  }

  Future<void> showCustomTrackingDialog(BuildContext context) async =>
      navigator.showDefaultDialog<void>(
        isCloseIcon: false,
        title: Text(context.l10n.dialog__message__tracking_title),
        content: Text(context.l10n.dialog__message__tracking_message),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
            child: Text(context.l10n.to_continue),
          ),
        ],
      );

  @override
  Widget buildPage(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        appBarTheme: context.theme.appBarTheme.copyWith(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
          ),
        ),
      ),
      child: CommonScaffold(
        hideKeyboardWhenTouchOutside: true,
        body: const LoginBody(),
        // bottomNavigationBar: context.isLandscape && context.isTablet
        //     ? null
        //     : const LoginButton(),
      ),
    );
  }
}
