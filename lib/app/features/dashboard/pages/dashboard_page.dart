import 'package:edtech/app/base/base_page_state.dart';
import 'package:edtech/app/features/dashboard/bloc/dashboard_page_bloc.dart';
import 'package:edtech/app/features/dashboard/pages/widgets/dashboard_app_bar.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell? navigationShell;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState
    extends BasePageState<DashboardPage, DashboardPageBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const DashboardPageEvent.started());
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(),
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        child: widget.navigationShell ?? const SizedBox.shrink(),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: widget.navigationShell?.currentIndex ?? 0,
        onDestinationSelected: (int index) => widget.navigationShell?.goBranch(
          index,
          initialLocation: index == widget.navigationShell?.currentIndex,
        ),
        destinations: <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.dashboard_outlined,
              color: context.colorScheme.onSurfaceVariant,
            ),
            selectedIcon: Icon(
              Icons.dashboard,
              color: AppColors.primary,
            ),
            label: 'Trang chủ',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.school_outlined,
              color: context.colorScheme.onSurfaceVariant,
            ),
            selectedIcon: Icon(
              Icons.school,
              color: AppColors.primary,
            ),
            label: 'Khóa học',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.favorite_border_rounded,
              color: context.colorScheme.onSurfaceVariant,
            ),
            selectedIcon: Icon(
              Icons.favorite_rounded,
              color: AppColors.primary,
            ),
            label: 'Yêu thích',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.forum_outlined,
              color: context.colorScheme.onSurfaceVariant,
            ),
            selectedIcon: Icon(
              Icons.forum,
              color: AppColors.primary,
            ),
            label: 'Cộng đồng',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.account_circle_outlined,
              color: context.colorScheme.onSurfaceVariant,
            ),
            selectedIcon: Icon(
              Icons.account_circle,
              color: AppColors.primary,
            ),
            label: 'Hồ sơ',
          ),
        ],
      ),
    );
  }
}
