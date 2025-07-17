import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedCoursesSection extends StatelessWidget {
  const FeaturedCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final appDimen = AppDimen.of(context);
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
                'Khóa học nổi bật',
                style: TextStyle(
                  fontSize: Dimens.d20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.d8.w),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  'Xem tất cả',
                  style: TextStyle(
                    fontSize: Dimens.d15.sp,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: appDimen.responsiveDimens(
            mobile: Dimens.d300,
            tablet: Dimens.d340,
            ultraTablet: Dimens.d380,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            padding: EdgeInsets.symmetric(horizontal: Dimens.d16.w),
            itemBuilder: (context, index) {
              return Container(
                width: appDimen.responsiveDimens(
                  mobile: Dimens.d260,
                  tablet: Dimens.d280,
                  ultraTablet: Dimens.d300,
                ),
                margin: EdgeInsets.only(right: Dimens.d16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimens.d16.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: Dimens.d15,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(Dimens.d16.r),
                      ),
                      child: Container(
                        height: appDimen.responsiveDimens(
                          mobile: Dimens.d140,
                          tablet: Dimens.d150,
                          ultraTablet: Dimens.d160,
                        ),
                        width: double.infinity,
                        color: Colors.grey[200],
                        child: Image.asset(
                          Assets.images.banner1.path,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(Dimens.d12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Khóa học ${[
                                'Tiếng Anh cơ bản',
                                'IELTS Speaking',
                                'Business English',
                                'Giao tiếp hàng ngày',
                                'Ngữ pháp nâng cao'
                              ][index]}',
                              style: TextStyle(
                                fontSize: Dimens.d16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: Dimens.d6.h),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: Dimens.d12.r,
                                  backgroundColor: Colors.grey[200],
                                  child: Icon(
                                    Icons.person,
                                    size: Dimens.d16.sp,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                SizedBox(width: Dimens.d6.w),
                                Expanded(
                                  child: Text(
                                    'Thầy ${[
                                      'John Smith',
                                      'Sarah Johnson',
                                      'Mike Wilson',
                                      'Emma Brown',
                                      'David Lee'
                                    ][index]}',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: Dimens.d14.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: Dimens.d6.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: Dimens.d16.sp,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: Dimens.d4.w),
                                Text(
                                  (4.5 + (index * 0.1)).toStringAsFixed(1),
                                  style: TextStyle(
                                    fontSize: Dimens.d14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  ' (${150 + index * 20})',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: Dimens.d14.sp,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '\$${99 + index * 10}',
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: Dimens.d16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: Dimens.d6.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: Dimens.d14.sp,
                                  color: Colors.grey[600],
                                ),
                                SizedBox(width: Dimens.d4.w),
                                Text(
                                  '${8 + index} tuần',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: Dimens.d13.sp,
                                  ),
                                ),
                                SizedBox(width: Dimens.d12.w),
                                Icon(
                                  Icons.people_outline,
                                  size: Dimens.d14.sp,
                                  color: Colors.grey[600],
                                ),
                                SizedBox(width: Dimens.d4.w),
                                Text(
                                  '${20 + index * 5} học viên',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: Dimens.d13.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
