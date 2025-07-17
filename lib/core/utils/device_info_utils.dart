import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:edtech/core/utils/log_utils.dart';

class DeviceInfoUtils {
  static final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();
  static const String _appVersion = '1.0.3';

  static Future<Map<String, dynamic>> getDeviceInfo() async {
    try {
      if (Platform.isAndroid) {
        final androidInfo = await _deviceInfoPlugin.androidInfo;

        return {
          'device_id': androidInfo.id,
          'device_model': '${androidInfo.brand} ${androidInfo.model}',
          'os': 'Android ${androidInfo.version.release}',
          'app_version': _appVersion,
        };
      } else if (Platform.isIOS) {
        final iosInfo = await _deviceInfoPlugin.iosInfo;

        return {
          'device_id': iosInfo.identifierForVendor,
          'device_model': iosInfo.model,
          'os': 'iOS ${iosInfo.systemVersion}',
          'app_version': _appVersion,
        };
      }
    } catch (e) {
      Log.d('Error getting device info: $e');
    }

    return {
      'device_id': 'unknown',
      'device_model': 'unknown',
      'os': 'unknown',
      'app_version': _appVersion,
    };
  }

  static Future<void> printDeviceInfo() async {
    final deviceInfo = await getDeviceInfo();
    Log.d('Device Info:');
    Log.d('Device ID: ${deviceInfo['device_id']}');
    Log.d('Device Model: ${deviceInfo['device_model']}');
    Log.d('OS: ${deviceInfo['os']}');
    Log.d('App Version: ${deviceInfo['app_version']}');
  }
}
