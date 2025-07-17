import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnhancedOnboardingItem extends StatelessWidget {
  const EnhancedOnboardingItem({
    super.key,
    required this.isActive,
    required this.imagePath,
    required this.title,
    required this.description,
    this.icon,
  });

  final String imagePath;
  final String title;
  final String description;
  final IconData? icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Illustration với hiệu ứng
          SizedBox(
            height: 280.h,
            width: 280.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(130.r),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 40.h),

          // Title với typography tốt hơn
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.neuTral10,
              height: 1.2,
              letterSpacing: -0.5,
            ),
          ),

          SizedBox(height: 20.h),

          // Description
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.neuTral10,
              height: 1.5,
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
