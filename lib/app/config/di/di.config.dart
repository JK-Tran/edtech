// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:edtech/app/base/bloc/common/common_bloc.dart' as _i195;
import 'package:edtech/app/bloc/app_bloc.dart' as _i87;
import 'package:edtech/app/data/mapper/language_code_data_mapper.dart' as _i717;
import 'package:edtech/app/data/repository/repository_impl.dart' as _i260;
import 'package:edtech/app/data/source/app_preferences_impl.dart' as _i1025;
import 'package:edtech/app/di/di.dart' as _i1032;
import 'package:edtech/app/di/network_module.dart' as _i377;
import 'package:edtech/app/domain/repository/repository.dart' as _i308;
import 'package:edtech/app/domain/usecase/get_app_setting_use_case.dart'
    as _i502;
import 'package:edtech/app/domain/usecase/get_initial_home_data_use_case.dart'
    as _i861;
import 'package:edtech/app/domain/usecase/load_initial_resource_use_case.dart'
    as _i885;
import 'package:edtech/app/domain/usecase/save_is_first_launch_app_use_case.dart'
    as _i923;
import 'package:edtech/app/domain/usecase/save_language_code_use_case.dart'
    as _i754;
import 'package:edtech/app/domain/usecase/save_theme_mode_use_case.dart'
    as _i481;
import 'package:edtech/app/features/auth/bloc/auth_bloc.dart' as _i494;
import 'package:edtech/app/features/auth/data/mapper/gender_data_mapper.dart'
    as _i594;
import 'package:edtech/app/features/auth/data/mapper/role_data_mapper.dart'
    as _i1019;
import 'package:edtech/app/features/auth/data/mapper/token_data_mapper.dart'
    as _i661;
import 'package:edtech/app/features/auth/data/mapper/user_data_mapper.dart'
    as _i568;
import 'package:edtech/app/features/auth/data/mapper/user_status_data_mapper.dart'
    as _i912;
import 'package:edtech/app/features/auth/data/repositories/auth_repository_impl.dart'
    as _i944;
import 'package:edtech/app/features/auth/data/source/auth_api_service.dart'
    as _i259;
import 'package:edtech/app/features/auth/data/source/google_auth_service.dart'
    as _i959;
import 'package:edtech/app/features/auth/domain/repositories/auth_repository.dart'
    as _i345;
import 'package:edtech/app/features/auth/domain/usecases/get_initial_app_data_use_case.dart'
    as _i130;
import 'package:edtech/app/features/auth/domain/usecases/is_logged_in_use_case.dart'
    as _i899;
import 'package:edtech/app/features/auth/domain/usecases/login_use_case.dart'
    as _i203;
import 'package:edtech/app/features/auth/domain/usecases/login_with_google_use_case.dart'
    as _i214;
import 'package:edtech/app/features/auth/domain/usecases/logout_use_case.dart'
    as _i164;
import 'package:edtech/app/features/auth/domain/usecases/save_current_user_use_case.dart'
    as _i967;
import 'package:edtech/app/features/auth/presentation/login/bloc/login_bloc.dart'
    as _i847;
import 'package:edtech/app/features/courses/bloc/courses_bloc.dart' as _i388;
import 'package:edtech/app/features/dashboard/bloc/dashboard_page_bloc.dart'
    as _i728;
import 'package:edtech/app/features/home/bloc/home_bloc.dart' as _i371;
import 'package:edtech/app/navigation/app_navigator_impl.dart' as _i622;
import 'package:edtech/app/navigation/base/base_popup_info_mapper.dart'
    as _i681;
import 'package:edtech/app/navigation/mapper/app_popup_info_mapper.dart'
    as _i116;
import 'package:edtech/core/helper/app_info.dart' as _i870;
import 'package:edtech/core/infrastructure/data/api/client/auth_app_server_api_client.dart'
    as _i259;
import 'package:edtech/core/infrastructure/data/api/client/none_auth_app_server_api_client.dart'
    as _i26;
import 'package:edtech/core/infrastructure/data/api/client/raw_api_client.dart'
    as _i1003;
import 'package:edtech/core/infrastructure/data/api/client/refresh_token_api_client.dart'
    as _i652;
import 'package:edtech/core/infrastructure/data/api/mapper/base_error_response_mapper/json_array_error_response_mapper.dart'
    as _i973;
import 'package:edtech/core/infrastructure/data/api/mapper/base_error_response_mapper/json_object_error_response_mapper.dart'
    as _i626;
import 'package:edtech/core/infrastructure/data/api/mapper/base_error_response_mapper/line_error_response_mapper.dart'
    as _i995;
import 'package:edtech/core/infrastructure/data/api/mapper/pagination_data_mapper.dart'
    as _i116;
import 'package:edtech/core/infrastructure/data/api/middleware/access_token_interceptor.dart'
    as _i414;
import 'package:edtech/core/infrastructure/data/api/middleware/connectivity_interceptor.dart'
    as _i78;
import 'package:edtech/core/infrastructure/data/api/middleware/header_interceptor.dart'
    as _i226;
import 'package:edtech/core/navigation/app_navigator.dart' as _i641;
import 'package:edtech/core/services/local_storage/app_preferences.dart'
    as _i663;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i195.CommonBloc>(() => _i195.CommonBloc());
    gh.factory<_i717.LanguageCodeDataMapper>(
        () => _i717.LanguageCodeDataMapper());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => serviceModule.prefs,
      preResolve: true,
    );
    gh.factory<_i885.LoadInitialResourceUseCase>(
        () => const _i885.LoadInitialResourceUseCase());
    gh.factory<_i594.GenderDataMapper>(() => _i594.GenderDataMapper());
    gh.factory<_i1019.RoleDataMapper>(() => _i1019.RoleDataMapper());
    gh.factory<_i661.TokenDataMapper>(() => _i661.TokenDataMapper());
    gh.factory<_i912.UserStatusDataMapper>(() => _i912.UserStatusDataMapper());
    gh.factory<_i388.CoursesBloc>(() => _i388.CoursesBloc());
    gh.factory<_i728.DashboardPageBloc>(() => _i728.DashboardPageBloc());
    gh.factory<_i371.HomeBloc>(() => _i371.HomeBloc());
    gh.factory<_i973.JsonArrayErrorResponseMapper>(
        () => _i973.JsonArrayErrorResponseMapper());
    gh.factory<_i626.JsonObjectErrorResponseMapper>(
        () => _i626.JsonObjectErrorResponseMapper());
    gh.factory<_i995.LineErrorResponseMapper>(
        () => _i995.LineErrorResponseMapper());
    gh.factory<_i116.PaginationDataMapper>(() => _i116.PaginationDataMapper());
    gh.lazySingleton<_i973.InternetConnectionChecker>(
        () => networkModule.internetConnectionChecker);
    gh.lazySingleton<_i959.GoogleAuthService>(() => _i959.GoogleAuthService());
    gh.lazySingleton<_i870.AppInfo>(() => _i870.AppInfo());
    gh.lazySingleton<_i1003.RawApiClient>(() => _i1003.RawApiClient());
    gh.lazySingleton<_i681.BasePopupInfoMapper>(
        () => _i116.AppPopupInfoMapper());
    gh.lazySingleton<_i663.AppPreferences>(
        () => _i1025.AppPreferencesImpl(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i641.AppNavigator>(
        () => _i622.AppNavigatorImpl(gh<_i681.BasePopupInfoMapper>()));
    gh.factory<_i78.ConnectivityInterceptor>(() =>
        _i78.ConnectivityInterceptor(gh<_i973.InternetConnectionChecker>()));
    gh.factory<_i414.AccessTokenInterceptor>(
        () => _i414.AccessTokenInterceptor(gh<_i663.AppPreferences>()));
    gh.factory<_i226.HeaderInterceptor>(
        () => _i226.HeaderInterceptor(gh<_i870.AppInfo>()));
    gh.factory<_i568.UserDataMapper>(
        () => _i568.UserDataMapper(gh<_i594.GenderDataMapper>()));
    gh.lazySingleton<_i259.AuthAppServerApiClient>(
        () => _i259.AuthAppServerApiClient(
              gh<_i226.HeaderInterceptor>(),
              gh<_i414.AccessTokenInterceptor>(),
            ));
    gh.lazySingleton<_i652.RefreshTokenApiClient>(
        () => _i652.RefreshTokenApiClient(
              gh<_i226.HeaderInterceptor>(),
              gh<_i414.AccessTokenInterceptor>(),
            ));
    gh.lazySingleton<_i26.NoneAuthAppServerApiClient>(
        () => _i26.NoneAuthAppServerApiClient(gh<_i226.HeaderInterceptor>()));
    gh.lazySingleton<_i308.Repository>(() => _i260.RepositoryImpl(
          gh<_i663.AppPreferences>(),
          gh<_i717.LanguageCodeDataMapper>(),
        ));
    gh.factory<_i502.GetAppSettingUseCase>(
        () => _i502.GetAppSettingUseCase(gh<_i308.Repository>()));
    gh.factory<_i861.GetInitialHomeDataUseCase>(
        () => _i861.GetInitialHomeDataUseCase(gh<_i308.Repository>()));
    gh.factory<_i923.SaveIsFirstLaunchAppUseCase>(
        () => _i923.SaveIsFirstLaunchAppUseCase(gh<_i308.Repository>()));
    gh.factory<_i754.SaveLanguageCodeUseCase>(
        () => _i754.SaveLanguageCodeUseCase(gh<_i308.Repository>()));
    gh.factory<_i481.SaveThemeModeUseCase>(
        () => _i481.SaveThemeModeUseCase(gh<_i308.Repository>()));
    gh.lazySingleton<_i259.AuthApiService>(() => _i259.AuthApiService(
          gh<_i26.NoneAuthAppServerApiClient>(),
          gh<_i259.AuthAppServerApiClient>(),
        ));
    gh.lazySingleton<_i345.AuthRepository>(() => _i944.AuthRepositoryImpl(
          gh<_i663.AppPreferences>(),
          gh<_i259.AuthApiService>(),
          gh<_i568.UserDataMapper>(),
        ));
    gh.factory<_i130.GetInitialAuthDataUseCase>(
        () => _i130.GetInitialAuthDataUseCase(gh<_i345.AuthRepository>()));
    gh.factory<_i899.IsLoggedInUseCase>(
        () => _i899.IsLoggedInUseCase(gh<_i345.AuthRepository>()));
    gh.factory<_i203.LoginUseCase>(
        () => _i203.LoginUseCase(gh<_i345.AuthRepository>()));
    gh.factory<_i214.LoginWithGoogleUseCase>(
        () => _i214.LoginWithGoogleUseCase(gh<_i345.AuthRepository>()));
    gh.factory<_i164.LogoutUseCase>(
        () => _i164.LogoutUseCase(gh<_i345.AuthRepository>()));
    gh.factory<_i967.SaveCurrentUserUseCase>(
        () => _i967.SaveCurrentUserUseCase(gh<_i345.AuthRepository>()));
    gh.lazySingleton<_i494.AuthBloc>(() => _i494.AuthBloc(
          gh<_i130.GetInitialAuthDataUseCase>(),
          gh<_i967.SaveCurrentUserUseCase>(),
          gh<_i164.LogoutUseCase>(),
        ));
    gh.factory<_i847.LoginBloc>(() => _i847.LoginBloc(
          gh<_i203.LoginUseCase>(),
          gh<_i214.LoginWithGoogleUseCase>(),
          gh<_i959.GoogleAuthService>(),
        ));
    gh.lazySingleton<_i87.AppBloc>(() => _i87.AppBloc(
          gh<_i494.AuthBloc>(),
          gh<_i502.GetAppSettingUseCase>(),
          gh<_i481.SaveThemeModeUseCase>(),
          gh<_i754.SaveLanguageCodeUseCase>(),
        ));
    return this;
  }
}

class _$ServiceModule extends _i1032.ServiceModule {}

class _$NetworkModule extends _i377.NetworkModule {}
