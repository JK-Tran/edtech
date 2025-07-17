import 'package:edtech/app/base/base_page_state.dart';
import 'package:edtech/app/features/home/bloc/home_bloc.dart';
import 'package:edtech/app/features/home/pages/widgets/categories_section.dart';
import 'package:edtech/app/features/home/pages/widgets/featured_courses_section.dart';
import 'package:edtech/app/features/home/pages/widgets/featured_teachers_section.dart';
import 'package:edtech/app/features/dashboard/pages/widgets/dashboard_app_bar.dart';
import 'package:edtech/app/features/home/pages/widgets/popular_languages_section.dart';
import 'package:edtech/app/features/home/pages/widgets/search_section.dart';
import 'package:edtech/app/features/home/pages/widgets/stats_section.dart';
import 'package:edtech/app/features/home/pages/widgets/welcome_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const HomeEvent.started());
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: RefreshIndicator(
        onRefresh: () async {
          bloc.add(const HomeEvent.started());
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              WelcomeSection(),
              SearchSection(),
              StatsSection(),
              FeaturedTeachersSection(),
              PopularLanguagesSection(),
              FeaturedCoursesSection(),
              CategoriesSection(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
