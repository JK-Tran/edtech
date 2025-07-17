// import 'package:edtech/app/di/di.dart' as di;
import 'package:edtech/core/config/config.dart';
import 'package:edtech/core/helper/app_info.dart';
// import 'package:edtech/core/services/firebase/firebase_analytics.dart';
// import 'package:edtech/core/services/firebase/firebase_crashlytics.dart';
// import 'package:edtech/core/services/firebase/firebase_messaging.dart';
// import 'package:edtech/core/services/firebase/firebase_remote_config.dart';
import 'package:get_it/get_it.dart';

class SharedConfig extends Config {
  SharedConfig._();

  factory SharedConfig.getInstance() {
    return _instance;
  }

  static final SharedConfig _instance = SharedConfig._();

  @override
  Future<void> config() async {
    //await di.configureDependencies();
    await GetIt.instance.get<AppInfo>().init();
    // await AntoreeCrashlytics.initialize();
    // await AntoreeAnalytics.initialize();
    // await AntoreeMessaging.initialize();
    // await AntoreeRemoteConfig.initialize();
    // await AntoreeDynamicLink.initialize();
  }
}
