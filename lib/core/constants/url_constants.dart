import 'package:edtech/core/constants/env_constants.dart';
import 'package:edtech/core/model/shared_enum.dart';

class UrlConstants {
  const UrlConstants._();

  static String get apiVersion => '/api/v1';

  static String get appApiBaseUrl {
    switch (EnvConstants.flavor) {
      case Flavor.develop:
        return 'https://3a62-14-169-44-21.ngrok-free.app';
      case Flavor.qa:
        return 'https://api-v2.prod.antoree.tech';
      case Flavor.staging:
        return 'https://3a62-14-169-44-21.ngrok-free.app';
      //return 'http://172.16.0.82:8000';
      case Flavor.production:
        return 'https://api-v2.prod.antoree.tech';
    }
  }
}
