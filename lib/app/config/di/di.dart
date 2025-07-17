import 'package:edtech/app/config/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ServiceModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() => getIt.init();
