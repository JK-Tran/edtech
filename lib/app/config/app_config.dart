// import 'package:firebase_core/firebase_core.dart';
import 'package:edtech/app/base/bloc/app_bloc_observer.dart';
import 'package:edtech/app/config/di/di.dart' as di;
import 'package:edtech/core/constants/ui/ui_constants.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:edtech/core/utils/device_utils.dart';
import 'package:edtech/core/utils/view_utils.dart';
import 'package:edtech/initializer/app_initializer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppConfig extends ApplicationConfig {
  factory AppConfig.getInstance() {
    return _instance;
  }

  AppConfig._();

  static final AppConfig _instance = AppConfig._();

  static const String configAbsenceButton = 'config_absence_unit_button';

  @override
  Future<void> config() async {
    // await Firebase.initializeApp();
    di.configureDependencies();
    Bloc.observer = AppBlocObserver();
    await ViewUtils.setPreferredOrientations(
      DeviceUtils.deviceType == DeviceType.mobile
          ? UiConstants.mobileOrientation
          : UiConstants.tabletOrientation,
    );
    // ViewUtils.setSystemUIOverlayStyle(UiConstants.systemUiOverlay);
    //await LocalPushNotificationHelper.init();
  }
}
