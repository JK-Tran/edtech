import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({
    super.key,
    required this.courseId,
  });

  final String? courseId;

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Khóa học #${widget.courseId}'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => context.pop(),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero banner with gradient overlay
            Padding(
              padding: EdgeInsets.all(Dimens.d16.w),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: Dimens.d240.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.d16.r),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/banner1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: Dimens.d240.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.d16.r),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.7),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: Dimens.d20.h,
                    left: Dimens.d20.w,
                    right: Dimens.d20.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimens.d12.w,
                            vertical: Dimens.d6.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(Dimens.d20.r),
                          ),
                          child: Text(
                            'Cơ bản',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimens.d12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: Dimens.d8.h),
                        Text(
                          'Khóa học Tiếng Anh giao tiếp cơ bản',
                          style: TextStyle(
                            fontSize: Dimens.d24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.black.withValues(alpha: 0.5),
                                offset: const Offset(0, 1),
                                blurRadius: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(Dimens.d20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Course stats in cards
                  Row(
                    children: [
                      Expanded(
                        child: _buildStatCard(
                          Icons.people_outline,
                          '1,250',
                          'Học viên',
                          Colors.blue,
                        ),
                      ),
                      SizedBox(width: Dimens.d12.w),
                      Expanded(
                        child: _buildStatCard(
                          Icons.menu_book_outlined,
                          '45',
                          'Bài học',
                          Colors.green,
                        ),
                      ),
                      SizedBox(width: Dimens.d12.w),
                      Expanded(
                        child: _buildStatCard(
                          Icons.access_time,
                          '60 phút',
                          'Mỗi buổi',
                          Colors.orange,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimens.d24.h),

                  // Teacher info card
                  Container(
                    padding: EdgeInsets.all(Dimens.d16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimens.d16.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: Dimens.d60.w,
                          height: Dimens.d60.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.primary,
                                AppColors.primary.withValues(alpha: 0.7)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(Dimens.d30.r),
                          ),
                          child: Icon(
                            Icons.person,
                            size: Dimens.d30.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: Dimens.d16.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nguyễn Văn A',
                                style: TextStyle(
                                  fontSize: Dimens.d18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: Dimens.d4.h),
                              Text(
                                'Giảng viên tiếng Anh - 5 năm kinh nghiệm',
                                style: TextStyle(
                                  fontSize: Dimens.d14.sp,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(height: Dimens.d6.h),
                              Row(
                                children: [
                                  ...List.generate(
                                      5,
                                      (index) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: Dimens.d16.sp,
                                          )),
                                  SizedBox(width: Dimens.d8.w),
                                  Text(
                                    '4.8 (128 đánh giá)',
                                    style: TextStyle(
                                      fontSize: Dimens.d14.sp,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w500,
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
                  SizedBox(height: Dimens.d24.h),

                  // Pricing section
                  Container(
                    padding: EdgeInsets.all(Dimens.d20.w),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.primary.withValues(alpha: 0.1),
                          AppColors.primary.withValues(alpha: 0.05),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(Dimens.d16.r),
                      border: Border.all(
                        color: AppColors.primary.withValues(alpha: 0.2),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.local_offer_outlined,
                              color: AppColors.primary,
                              size: Dimens.d24.sp,
                            ),
                            SizedBox(width: Dimens.d8.w),
                            Text(
                              'Gói học phí',
                              style: TextStyle(
                                fontSize: Dimens.d18.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Dimens.d16.h),
                        _buildPricingOption(
                          'Buổi học thử',
                          'MIỄN PHÍ',
                          'Trải nghiệm 1 buổi học đầy đủ',
                          true,
                        ),
                        SizedBox(height: Dimens.d12.h),
                        _buildPricingOption(
                          'Khóa cơ bản',
                          '1.200.000đ',
                          '45 bài học • 3 tháng • Chứng chỉ',
                          false,
                        ),
                        SizedBox(height: Dimens.d12.h),
                        _buildPricingOption(
                          'Khóa nâng cao',
                          '2.800.000đ',
                          '80 bài học • 6 tháng • 1-1 coaching',
                          false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimens.d24.h),

                  // Course description
                  _buildSectionTitle('Về khóa học', Icons.info_outline),
                  SizedBox(height: Dimens.d16.h),
                  Container(
                    padding: EdgeInsets.all(Dimens.d16.w),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(Dimens.d12.r),
                    ),
                    child: Text(
                      'Khóa học Tiếng Anh giao tiếp cơ bản giúp bạn nắm vững các kỹ năng giao tiếp thiết yếu trong cuộc sống hàng ngày. Bạn sẽ được học với giảng viên có nhiều kinh nghiệm và phương pháp giảng dạy hiệu quả, tương tác trực tiếp với các tình huống thực tế.',
                      style: TextStyle(
                        fontSize: Dimens.d16.sp,
                        color: Colors.grey[800],
                        height: 1.6,
                      ),
                    ),
                  ),
                  SizedBox(height: Dimens.d24.h),

                  // Course lessons
                  _buildSectionTitle(
                      'Nội dung bài học', Icons.play_lesson_outlined),
                  SizedBox(height: Dimens.d16.h),
                  _buildLessonItem(
                      '1. Giới thiệu và làm quen', '60 phút', true),
                  _buildLessonItem(
                      '2. Giao tiếp cơ bản hàng ngày', '60 phút', false),
                  _buildLessonItem(
                      '3. Từ vựng và ngữ pháp thiết yếu', '60 phút', false),
                  _buildLessonItem('4. Thực hành hội thoại', '60 phút', false),
                  _buildLessonItem('5. Kiểm tra và đánh giá', '60 phút', false),
                  SizedBox(height: Dimens.d24.h),

                  // Schedule
                  _buildSectionTitle('Lịch học', Icons.schedule),
                  SizedBox(height: Dimens.d16.h),
                  Container(
                    padding: EdgeInsets.all(Dimens.d16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimens.d16.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Thời gian rảnh của giáo viên',
                          style: TextStyle(
                            fontSize: Dimens.d16.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                        SizedBox(height: Dimens.d16.h),
                        _buildTimeSlotGrid(),
                        SizedBox(height: Dimens.d16.h),
                        Row(
                          children: [
                            Container(
                              width: Dimens.d16.w,
                              height: Dimens.d16.h,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius:
                                    BorderRadius.circular(Dimens.d4.r),
                              ),
                            ),
                            SizedBox(width: Dimens.d8.w),
                            Text(
                              'Có thể học',
                              style: TextStyle(
                                fontSize: Dimens.d12.sp,
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(width: Dimens.d16.w),
                            Container(
                              width: Dimens.d16.w,
                              height: Dimens.d16.h,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius:
                                    BorderRadius.circular(Dimens.d4.r),
                              ),
                            ),
                            SizedBox(width: Dimens.d8.w),
                            Text(
                              'Đã đặt',
                              style: TextStyle(
                                fontSize: Dimens.d12.sp,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimens.d24.h),

                  // Reviews
                  _buildSectionTitle(
                      'Đánh giá học viên', Icons.rate_review_outlined),
                  SizedBox(height: Dimens.d16.h),
                  _buildReviewItem(
                    'Nguyễn Thị B',
                    4.5,
                    'Giảng viên nhiệt tình, bài giảng dễ hiểu và thực tế',
                    '2 ngày trước',
                  ),
                  _buildReviewItem(
                    'Trần Văn C',
                    5.0,
                    'Khóa học rất hay, tôi đã cải thiện được khả năng giao tiếp rất nhiều',
                    '1 tuần trước',
                  ),
                  SizedBox(height: Dimens.d100.h), // Space for bottom bar
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(Dimens.d15.w),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 20,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            children: [
              // Like button
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  icon: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.grey[600],
                    size: Dimens.d28.sp,
                  ),
                ),
              ),
              SizedBox(width: Dimens.d12.w),
              // Register button
              Expanded(
                child: Container(
                  height: Dimens.d56.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primary,
                        AppColors.primary.withValues(alpha: 0.8)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(Dimens.d16.r),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.d10.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.rocket_launch_outlined,
                          size: Dimens.d20.sp,
                          color: AppColors.neuTral100,
                        ),
                        SizedBox(width: Dimens.d6.w),
                        Flexible(
                          child: Text(
                            'Đăng ký học thử',
                            style: TextStyle(
                              fontSize: Dimens.d14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.primary,
          size: Dimens.d24.sp,
        ),
        SizedBox(width: Dimens.d8.w),
        Text(
          title,
          style: TextStyle(
            fontSize: Dimens.d20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(
      IconData icon, String value, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(Dimens.d16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimens.d16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(Dimens.d8.w),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(Dimens.d12.r),
            ),
            child: Icon(
              icon,
              color: color,
              size: Dimens.d24.sp,
            ),
          ),
          SizedBox(height: Dimens.d8.h),
          Text(
            value,
            style: TextStyle(
              fontSize: Dimens.d16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: Dimens.d12.sp,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPricingOption(
      String title, String price, String description, bool isHighlighted) {
    return Container(
      padding: EdgeInsets.all(Dimens.d16.w),
      decoration: BoxDecoration(
        color: isHighlighted
            ? AppColors.primary.withValues(alpha: 0.1)
            : Colors.white,
        borderRadius: BorderRadius.circular(Dimens.d12.r),
        border: Border.all(
          color: isHighlighted ? AppColors.primary : Colors.grey[300]!,
          width: isHighlighted ? 2 : 1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: Dimens.d16.sp,
                    fontWeight: FontWeight.bold,
                    color: isHighlighted ? AppColors.primary : Colors.black,
                  ),
                ),
                SizedBox(height: Dimens.d4.h),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: Dimens.d12.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: Dimens.d18.sp,
              fontWeight: FontWeight.bold,
              color: isHighlighted ? AppColors.primary : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLessonItem(String title, String duration, bool isFirst) {
    return Container(
      padding: EdgeInsets.all(Dimens.d16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimens.d12.r),
        border: Border.all(
          color: isFirst ? AppColors.primary : Colors.grey[200]!,
          width: isFirst ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 6,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      margin: EdgeInsets.only(bottom: Dimens.d12.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(Dimens.d8.w),
            decoration: BoxDecoration(
              color: isFirst ? AppColors.primary : Colors.grey[100],
              borderRadius: BorderRadius.circular(Dimens.d8.r),
            ),
            child: Icon(
              isFirst ? Icons.play_arrow : Icons.lock_outline,
              color: isFirst ? Colors.white : Colors.grey[600],
              size: Dimens.d20.sp,
            ),
          ),
          SizedBox(width: Dimens.d12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: Dimens.d16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: Dimens.d4.h),
                Text(
                  duration,
                  style: TextStyle(
                    fontSize: Dimens.d14.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          if (isFirst)
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.d8.w,
                vertical: Dimens.d4.h,
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(Dimens.d12.r),
              ),
              child: Text(
                'Miễn phí',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Dimens.d12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTimeSlotGrid() {
    final days = ['T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'CN'];
    final timeSlots = ['9:00', '10:00', '14:00', '15:00', '19:00', '20:00'];

    return Column(
      children: [
        // Header row with days
        Row(
          children: [
            SizedBox(width: Dimens.d40.w), // Space for time labels
            ...days.map((day) => Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: Dimens.d8.h),
                    child: Text(
                      day,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Dimens.d12.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                )),
          ],
        ),
        // Time slots grid
        ...timeSlots.map((time) => Row(
              children: [
                // Time label
                Container(
                  width: Dimens.d40.w,
                  padding: EdgeInsets.symmetric(vertical: Dimens.d4.h),
                  child: Text(
                    time,
                    style: TextStyle(
                      fontSize: Dimens.d10.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                // Time slots for each day
                ...days.map((day) => Expanded(
                      child: Container(
                        margin: EdgeInsets.all(Dimens.d2.w),
                        height: Dimens.d24.h,
                        decoration: BoxDecoration(
                          color: _getTimeSlotColor(day, time),
                          borderRadius: BorderRadius.circular(Dimens.d4.r),
                          border: Border.all(
                            color: Colors.grey[200]!,
                            width: 0.5,
                          ),
                        ),
                        child: _getTimeSlotContent(day, time),
                      ),
                    )),
              ],
            )),
      ],
    );
  }

  Color _getTimeSlotColor(String day, String time) {
    // Define available time slots (you can customize this)
    final availableSlots = {
      'T2': ['19:00', '20:00'],
      'T3': ['19:00', '20:00'],
      'T4': ['19:00', '20:00'],
      'T5': ['19:00', '20:00'],
      'T6': ['19:00', '20:00'],
      'T7': ['9:00', '10:00', '14:00', '15:00'],
      'CN': ['9:00', '10:00', '14:00', '15:00'],
    };

    final bookedSlots = {
      'T2': ['19:00'],
      'T3': [],
      'T4': ['20:00'],
      'T5': [],
      'T6': ['19:00'],
      'T7': ['14:00'],
      'CN': ['9:00'],
    };

    if (bookedSlots[day]?.contains(time) ?? false) {
      return Colors.grey[300]!;
    } else if (availableSlots[day]?.contains(time) ?? false) {
      return AppColors.primary.withValues(alpha: 0.2);
    } else {
      return Colors.grey[100]!;
    }
  }

  Widget _getTimeSlotContent(String day, String time) {
    final bookedSlots = {
      'T2': ['19:00'],
      'T3': [],
      'T4': ['20:00'],
      'T5': [],
      'T6': ['19:00'],
      'T7': ['14:00'],
      'CN': ['9:00'],
    };

    if (bookedSlots[day]?.contains(time) ?? false) {
      return Icon(
        Icons.close,
        size: Dimens.d12.sp,
        color: Colors.grey[500],
      );
    }
    return Container();
  }

  Widget _buildReviewItem(
      String name, double rating, String comment, String time) {
    return Container(
      padding: EdgeInsets.all(Dimens.d16.w),
      margin: EdgeInsets.only(bottom: Dimens.d12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimens.d16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: Dimens.d48.w,
                height: Dimens.d48.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primary,
                      AppColors.primary.withValues(alpha: 0.7)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(Dimens.d24.r),
                ),
                child: Center(
                  child: Text(
                    name[0],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.d18.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: Dimens.d12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: Dimens.d16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: Dimens.d4.h),
                    Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) => Icon(
                            index < rating.floor()
                                ? Icons.star
                                : (index < rating
                                    ? Icons.star_half
                                    : Icons.star_border),
                            color: Colors.amber,
                            size: Dimens.d16.sp,
                          ),
                        ),
                        SizedBox(width: Dimens.d8.w),
                        Text(
                          time,
                          style: TextStyle(
                            fontSize: Dimens.d12.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Dimens.d12.h),
          Text(
            comment,
            style: TextStyle(
              fontSize: Dimens.d15.sp,
              color: Colors.grey[800],
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
