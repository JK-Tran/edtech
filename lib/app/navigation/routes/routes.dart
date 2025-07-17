import 'package:edtech/app/domain/repository/repository.dart';
import 'package:edtech/app/features/auth/bloc/auth_bloc.dart';
import 'package:edtech/app/features/auth/presentation/login/pages/login_page.dart';
import 'package:edtech/app/features/community/pages/community_page.dart';
import 'package:edtech/app/features/courses/pages/courses_page.dart';
import 'package:edtech/app/features/courses/pages/detail/course_detail_page.dart';
import 'package:edtech/app/features/dashboard/pages/dashboard_page.dart';
import 'package:edtech/app/features/favorites/pages/favorites_page.dart';
import 'package:edtech/app/features/home/pages/home_page.dart';
import 'package:edtech/app/features/onboarding/pages/onboarding_page.dart';
import 'package:edtech/app/features/profile/pages/profile_page.dart';
import 'package:edtech/app/navigation/routes/go_router_refresh_stream.dart';
import 'package:edtech/app/navigation/routes/transition_page.dart';
import 'package:edtech/core/utils/log_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _shellKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Routes {
  const Routes._();

  /// Special router
  static const String onboarding = '/';
  static const String notFound = '/not-found';
  static const String otp = '/one-time-password';

  /// Auth routes
  static const String auth = '/auth';
  static const String home = '/home';

  static const String courses = '/courses';
  static const String courseDetail = '/courses/detail/:id';

  static const String favorites = '/favorites';
  static const String community = '/community';
  static const String profile = '/profile';

  static const String changePassword = '/change-password';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';

  /// Course routes
  static const String schedule = '/schedule';
  static const String units = '/units';
  static const String unofficial = '/unofficial';
  static const String unitDetail = '/unit';
  static const String completedUnitDetail = '/completed-unit';

  static const String unitFeedback = '/unit-feedback';

  /// Absence
  static const String absence = '/absence';
  static const String absentUnit = '/absence-unit';
  static const String absenceDetail = '/absence';
  static const String absentHistory = '/absence-history';

  static const String reschedule = '/reschedule';
  static const String makeUpRequest = '/make-up-unit';

  /// Confirm
  static const String confirm = '/confirm';
  static const String confirmUnit = '/confirm-unit';
  static const String confirmDetail = '/confirm-request-detail';

  /// Notifications
  static const String notification = '/notification';

  /// Result
  static const String learn = '/learn';

  /// Menu
  // static const String menu = '/menu';
  // static const String policy = '/policy';
  // static const String certificates = '/certificates';
  // static const String contracts = '/contracts';
  // static const String unitVideos = '/unit-videos';
  // static const String testResults = '/test-results';
  // static const String penaltyHistory = '/teacher-penalty';
  // static const String setting = '/setting';

  // static const String videoPlayer = '/video-play';

  /// Other router
  // static const String chat = '/chat';
  // static const String helpCenter = '/help-center';

  // Allow all permissions
  static const List<String> pageNotAuthen = <String>[
    otp,
    resetPassword,
    forgotPassword,
  ];

  static final GoRouter _router = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: kDebugMode,
    initialLocation: home,
    refreshListenable: GoRouterRefreshStream(),
    redirect: (_, GoRouterState goState) {
      if (pageNotAuthen.any(goState.uri.toString().contains)) {
        return null;
      }

      final bool isAuth = goState.uri.toString().contains(auth);
      final repository = GetIt.instance.get<Repository>();
      final bool isFirstLaunch = repository.isFirstLaunchApp;
      final bool isAuthenticated =
          GetIt.instance.get<AuthBloc>().state.maybeWhen(
                authenticated: (_) => true,
                orElse: () => false,
              );

      if (isFirstLaunch) {
        if (!goState.uri.toString().contains(onboarding)) {
          Log.d('Đây là lần đầu tiên bạn sử dụng ứng dụng');
          return onboarding;
        }
        return null;
      }

      final isDashboardRoute = [
        Routes.home,
        Routes.courses,
        Routes.favorites,
        Routes.community,
        Routes.profile,
      ].any((route) => goState.fullPath?.startsWith(route) ?? false);

      if (isAuthenticated && !isDashboardRoute) {
        return Routes.home;
      }

      if (!isAuthenticated && !isAuth) {
        return auth;
      }

      return null;
    },
    routes: <RouteBase>[
      GoRoute(
        path: onboarding,
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: auth,
        builder: (context, state) => const LoginPage(),
      ),

      /// 👉 Course detail tách khỏi shell
      GoRoute(
        path: '/courses/detail/:id',
        name: courseDetail,
        builder: (context, state) {
          final courseId = state.pathParameters['id'];
          return CourseDetailPage(courseId: courseId);
        },
      ),

      StatefulShellRoute.indexedStack(
        pageBuilder: (context, state, navigationShell) {
          return CupertinoDialogTransitionPage(
            child: DashboardPage(navigationShell: navigationShell),
          );
        },
        branches: [
          // Trang chủ
          StatefulShellBranch(
            navigatorKey: _shellKey,
            routes: <RouteBase>[
              GoRoute(
                path: home,
                name: home,
                pageBuilder: (context, state) =>
                    const FadeTransitionPage(child: HomePage()),
              ),
            ],
          ),
          // Khóa học
          StatefulShellBranch(
            routes: <RouteBase>[
              ShellRoute(
                builder: (context, state, child) {
                  return child;
                },
                routes: [
                  GoRoute(
                    path: courses,
                    name: courses,
                    pageBuilder: (context, state) =>
                        const FadeTransitionPage(child: CoursesPage()),
                  ),
                ],
              ),
            ],
          ),
          // Yêu thích
          StatefulShellBranch(
            //navigatorKey: _favoritesKey,
            routes: <RouteBase>[
              GoRoute(
                path: favorites,
                name: favorites,
                pageBuilder: (context, state) =>
                    const FadeTransitionPage(child: FavoritesPage()),
              ),
            ],
          ),
          // Cộng đồng
          StatefulShellBranch(
            //navigatorKey: _communityKey,
            routes: <RouteBase>[
              GoRoute(
                path: community,
                name: community,
                pageBuilder: (context, state) =>
                    const FadeTransitionPage(child: CommunityPage()),
              ),
            ],
          ),
          // Hồ sơ
          StatefulShellBranch(
            //navigatorKey: _profileKey,
            routes: <RouteBase>[
              GoRoute(
                path: profile,
                name: profile,
                pageBuilder: (context, state) =>
                    const FadeTransitionPage(child: ProfilePage()),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  static GoRouter get router => _router;
}
