import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularLanguagesSection extends StatelessWidget {
  const PopularLanguagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final appDimen = AppDimen.of(context);
    final languages = [
      {'name': 'Tiếng Anh', 'teachers': '3,500', 'flag': '🇺🇸'},
      {'name': 'Tiếng Nhật', 'teachers': '1,200', 'flag': '🇯🇵'},
      {'name': 'Tiếng Trung', 'teachers': '2,100', 'flag': '🇨🇳'},
      {'name': 'Tiếng Hàn', 'teachers': '800', 'flag': '🇰🇷'},
      {'name': 'Tiếng Pháp', 'teachers': '900', 'flag': '🇫🇷'},
      {'name': 'Tiếng Đức', 'teachers': '700', 'flag': '🇩🇪'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
            Dimens.d16.w,
            Dimens.d24.h,
            Dimens.d16.w,
            Dimens.d12.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ngôn ngữ phổ biến',
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
            mobile: Dimens.d120,
            tablet: Dimens.d140,
            ultraTablet: Dimens.d160,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: languages.length,
            padding: EdgeInsets.symmetric(horizontal: Dimens.d16.w),
            itemBuilder: (context, index) {
              final language = languages[index];
              return Container(
                width: appDimen.responsiveDimens(
                  mobile: Dimens.d130,
                  tablet: Dimens.d130,
                  ultraTablet: Dimens.d150,
                ),
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
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(Dimens.d12.r),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimens.d12.h,
                      horizontal: Dimens.d12.w,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          language['flag'] as String,
                          style: TextStyle(fontSize: Dimens.d28.sp),
                        ),
                        SizedBox(height: Dimens.d8.h),
                        Text(
                          language['name'] as String,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Dimens.d14.sp,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: Dimens.d6.h),
                        Text(
                          '${language['teachers']} GV',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: Dimens.d12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
