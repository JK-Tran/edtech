import 'package:edtech/app/base/base_page_state.dart';
import 'package:edtech/app/bloc/app_bloc.dart';
import 'package:edtech/app/components/scroll/custom_scroll.dart';
import 'package:edtech/app/features/auth/bloc/auth_bloc.dart';
import 'package:edtech/core/constants/locale_constants.dart';
import 'package:edtech/core/constants/ui/device_constants.dart';
import 'package:edtech/core/constants/ui/ui_constants.dart';
import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/resource/theme/provider/theme_resolver.dart';
import 'package:edtech/core/utils/log_utils.dart';
import 'package:edtech/resources/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class AntoreeApp extends StatelessWidget {
  const AntoreeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<AuthBloc>(create: (_) => GetIt.instance()),
        //BlocProvider<AppBloc>(create: (_) => GetIt.instance()),
        //BlocProvider<NotificationBloc>(create: (_) => GetIt.instance()),
      ],
      child: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends BasePageState<App, AppBloc> {
  late final AppNavigator _appRouter;
  late final GoRouter _router;

  @override
  bool get isAppWidget => true;

  @override
  void initState() {
    super.initState();

    _appRouter = GetIt.instance.get<AppNavigator>();
    _router = _appRouter.router;

    // Authorize
    context.read<AuthBloc>().add(const AuthEvent.init());

    bloc.add(const AppStarted());

    // Hide splash screen when app is ready
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Log.d('=== [LOG] Splash REMOVED ===');
      FlutterNativeSplash.remove();
    });

    //NotificationService.initialize();

    // AppsFlyer init
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    //   //await AntoreeRemoteConfig.activate();

    //   //await AppsFylerServices.initialize();
    // });
  }

  @override
  Widget buildPage(Object context) {
    return ScreenUtilInit(
      designSize: const Size(
        DeviceConstants.designDeviceWidth,
        DeviceConstants.designDeviceHeight,
      ),
      builder: (BuildContext context, Widget? child) =>
          BlocBuilder<AppBloc, AppState>(
        buildWhen: (AppState previous, AppState current) =>
            previous.isDarkTheme != current.isDarkTheme ||
            previous.languageCode != current.languageCode,
        builder: (BuildContext context, AppState state) {
          return MaterialApp.router(
            routerConfig: _router,
            debugShowCheckedModeBanner: false,
            title: UiConstants.materialAppTitle,
            themeMode: state.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
            theme: state.themeDataContainer.lightTheme(),
            darkTheme: state.themeDataContainer.darkTheme(),
            scrollBehavior: const ScrollByAnyDeviceScrollBehaviour(),
            builder: (BuildContext context, Widget? child) {
              final MediaQueryData data = MediaQuery.of(context);

              return MediaQuery(
                data: data.copyWith(textScaler: TextScaler.noScaling),
                child: ThemeResolver(
                  data: state.themeDataContainer,
                  child: child ?? const SizedBox.shrink(),
                ),
              );
            },
            localeResolutionCallback:
                (Locale? locale, Iterable<Locale> supportedLocales) =>
                    supportedLocales.contains(locale)
                        ? locale
                        : const Locale(LocaleConstants.defaultLocale),
            locale: Locale(state.languageCode.localeCode),
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}

//  @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(375, 812), // iPhone X design size
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (context, child) {
//         return MaterialApp.router(
//           theme: ThemeData(
//             appBarTheme: AppBarTheme(
//               backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//             ),
//             useMaterial3: true,
//           ),
//           localizationsDelegates: const [
//             S.delegate,
//           ],
//           debugShowCheckedModeBanner: false,
//           supportedLocales: S.delegate.supportedLocales,
//           routerConfig: Routes.router,
//         );
//       },
//     );
//   }
