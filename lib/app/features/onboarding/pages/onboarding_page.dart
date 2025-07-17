import 'package:edtech/app/components/button/elevated_button.dart';
import 'package:edtech/app/components/button/text_button.dart';
import 'package:edtech/app/domain/repository/repository.dart';
import 'package:edtech/app/navigation/routes/routes.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/enhanced_onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.neuTral100,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Dimens.d8),
            child: Column(
              children: [
                // Header với nút Skip
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       // Logo hoặc branding
                //       // Container(
                //       //   padding: EdgeInsets.all(8.r),
                //       //   decoration: BoxDecoration(
                //       //     color: AppColors.primary,
                //       //     borderRadius: BorderRadius.circular(12.r),
                //       //   ),
                //       //   child: Icon(
                //       //     _getIconForPage(_currentPage),
                //       //     color: Colors.white,
                //       //     size: 24.sp,
                //       //   ),
                //       // ),
                //       // Skip button
                //       // TextButton(
                //       //   onPressed: () {
                //       //     // Navigate to main screen
                //       //   },
                //       //   style: TextButton.styleFrom(
                //       //     backgroundColor: AppColors.primary,
                //       //     shape: RoundedRectangleBorder(
                //       //       borderRadius: BorderRadius.circular(20.r),
                //       //     ),
                //       //     padding: EdgeInsets.symmetric(
                //       //       horizontal: 16.w,
                //       //       vertical: 8.h,
                //       //     ),
                //       //   ),
                //       //   child: Text(
                //       //     'Bỏ qua',
                //       //     style: TextStyle(
                //       //       color: Colors.white,
                //       //       fontSize: 14.sp,
                //       //       fontWeight: FontWeight.w500,
                //       //     ),
                //       //   ),
                //       // ),
                //     ],
                //   ),
                // ),

                // Page view content
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return EnhancedOnboardingItem(
                            imagePath: Assets.illustration.learningAtHome.path,
                            title:
                                'Học 1 thầy kèm 1 trò trong hơn 150 phút/ngày',
                            description:
                                'Tìm hiểu giao viên đã được chứng nhận với kinh nghiệm dạy học. Cân bằng khả năng học tập của bạn với kế hoạch học tập phù hợp.',
                            // icon: Icons.school_rounded,
                            isActive: index == _currentPage,
                          );
                        case 1:
                          return EnhancedOnboardingItem(
                            imagePath: Assets.illustration.smartWay.path,
                            title: 'Học mọi lúc, mọi nơi',
                            description:
                                'Truy cập vào các bài học chất lượng cao mọi lúc, mọi nơi. Học tập linh hoạt theo thời gian của bạn.',
                            //icon: Icons.location_on_rounded,
                            isActive: index == _currentPage,
                          );
                        case 2:
                          return EnhancedOnboardingItem(
                            imagePath:
                                Assets.illustration.connetWithEveryone.path,
                            title: 'Theo dõi tiến độ học tập',
                            description:
                                'Theo dõi tiến độ học tập của bạn và nhận được phản hồi từ giáo viên. Đạt được mục tiêu học tập của bạn.',
                            //icon: Icons.trending_up_rounded,
                            isActive: index == _currentPage,
                          );
                        default:
                          return const SizedBox.shrink();
                      }
                    },
                  ),
                ),

                // Bottom section with indicator and navigation
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    bottom: 20.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Page indicator
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: ExpandingDotsEffect(
                          activeDotColor: AppColors.primary,
                          dotColor: Colors.grey.shade200,
                          dotHeight: 8.h,
                          dotWidth: 8.w,
                          spacing: 8.w,
                          expansionFactor: 4,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      // Navigation buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Back button
                          if (_currentPage > 0)
                            AppTextButton(
                              onPressed: () {
                                _pageController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              foregroundColor: AppColors.primary,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 10.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_back_rounded,
                                    color: AppColors.primary,
                                    size: 18.sp,
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    'Quay lại',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          else
                            const SizedBox.shrink(),

                          // Next button
                          AppElevatedButton(
                            onPressed: () {
                              if (_currentPage < 2) {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              } else {
                                _navigateToLogin();
                              }
                            },
                            backgroundColor: AppColors.primary,
                            expandedWith: false,
                            width: 120.w,
                            height: 40.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 10.h,
                            ),
                            borderRadius: BorderRadius.circular(25.r),
                            withShadow: true,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _currentPage < 2
                                      ? 'Tiếp theo'
                                      : 'Bắt đầu ngay',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Icon(
                                  _currentPage < 2
                                      ? Icons.arrow_forward_rounded
                                      : Icons.rocket_launch_rounded,
                                  color: Colors.white,
                                  size: 18.sp,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // IconData _getIconForPage(int page) {
  //   switch (page) {
  //     case 0:
  //       return Icons.school_rounded;
  //     case 1:
  //       return Icons.location_on_rounded;
  //     case 2:
  //       return Icons.trending_up_rounded;
  //     default:
  //       return Icons.school_rounded;
  //   }
  // }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _navigateToLogin() async {
    final repository = GetIt.instance.get<Repository>();
    await repository.saveIsFirstLaunchApp(isFirstLaunchApp: false);
    if (mounted) {
      context.go(Routes.auth);
    }
  }
}
