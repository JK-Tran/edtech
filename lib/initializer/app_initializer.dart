import 'package:edtech/core/config/config.dart';
import 'package:edtech/core/config/shared_config.dart';
import 'package:edtech/core/constants/env_constants.dart';

abstract class ApplicationConfig extends Config {}

class AppInitializer {
  AppInitializer(this._applicationConfig);

  final ApplicationConfig _applicationConfig;

  Future<void> init() async {
    EnvConstants.init();
    await _applicationConfig.init();
    await SharedConfig.getInstance().init();
  }
}
