import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedTeachersSection extends StatelessWidget {
  const FeaturedTeachersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
            Dimens.d16.w,
            Dimens.d24.h,
            Dimens.d16.w,
            Dimens.d16.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Giáo viên nổi bật',
                style: TextStyle(
                  fontSize: Dimens.d22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Xem tất cả',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: Dimens.d16.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Dimens.d260.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            padding: EdgeInsets.symmetric(horizontal: Dimens.d16.w),
            itemBuilder: (context, index) {
              return Container(
                width: Dimens.d160.w,
                margin: EdgeInsets.only(right: Dimens.d12.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimens.d12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: Dimens.d8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: Dimens.d12.h),
                    Container(
                      width: Dimens.d90.w,
                      height: Dimens.d90.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                      child: ClipOval(
                        child: Assets.images.personal1.image(
                          fit: BoxFit.cover,
                          width: Dimens.d90.w,
                          height: Dimens.d90.h,
                        ),
                      ),
                    ),
                    SizedBox(height: Dimens.d12.h),
                    Text(
                      'Giáo viên ${index + 1}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimens.d15.sp,
                      ),
                    ),
                    SizedBox(height: Dimens.d4.h),
                    Text(
                      'Tiếng Anh • Tiếng Nhật',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: Dimens.d13.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: Dimens.d6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: Dimens.d14.sp,
                        ),
                        SizedBox(width: Dimens.d4.w),
                        Text(
                          '${(4.5 + (index * 0.1)).toStringAsFixed(1)} (${100 + index * 10})',
                          style: TextStyle(fontSize: Dimens.d13.sp),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimens.d6.h),
                    Text(
                      '\$${15 + index * 2}/giờ',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: Dimens.d15.sp,
                      ),
                    ),
                    SizedBox(height: Dimens.d12.h),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
