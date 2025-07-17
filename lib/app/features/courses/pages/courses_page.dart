import 'package:edtech/app/base/base_page_state.dart';
import 'package:edtech/app/features/courses/bloc/courses_bloc.dart';
import 'package:edtech/app/features/dashboard/pages/widgets/dashboard_app_bar.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:drop_down_list/drop_down_list.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends BasePageState<CoursesPage, CoursesBloc> {
  // Lưu trữ các giá trị lọc
  String? selectedCountry;
  String? selectedLanguage;
  RangeValues priceRange = const RangeValues(0, 5000000);
  String? selectedCategory;
  String? selectedDayOfWeek;
  String? selectedTimeSlot;
  String? selectedDayOfMonth;

  // Danh sách các tùy chọn
  final List<String> countries = ['Việt Nam', 'USA', 'UK', 'Japan', 'Korea'];
  final List<String> languages = [
    'English',
    'Vietnamese',
    'Japanese',
    'Korean',
    'Chinese',
    'French',
    'Spanish',
    'German',
    'Russian',
    'Italian'
  ]; // Thêm nhiều ngôn ngữ hơn để minh họa tìm kiếm
  final List<String> categories = [
    'Math',
    'Science',
    'Language',
    'Programming'
  ];
  final List<String> daysOfWeek = [
    'Thứ 2',
    'Thứ 3',
    'Thứ 4',
    'Thứ 5',
    'Thứ 6',
    'Thứ 7',
    'Chủ Nhật'
  ];
  final List<String> timeSlots = [
    '08:00-10:00',
    '10:00-12:00',
    '13:00-15:00',
    '15:00-17:00',
    '18:00-20:00'
  ];
  final List<String> daysOfMonth =
      List.generate(31, (index) => 'Ngày ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(),
      body: buildPage(context),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          Row(
            children: [
              // Ô tìm kiếm
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Tìm kiếm giáo viên hoặc chủ đề...',
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 12.w),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              // Nút bộ lọc
              Container(
                height: 48.h,
                width: 48.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.filter_alt_outlined, color: Colors.blueGrey),
                  onPressed: () {
                    _showFilterModal(context);
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showFilterModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              padding: EdgeInsets.all(20.w),
              height: MediaQuery.of(context).size.height * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tiêu đề và nút đóng
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bộ lọc khóa học',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.close, color: Colors.grey.shade600),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  Divider(height: 30.h, thickness: 1),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Lọc theo quốc gia
                          // _buildFilterSection(
                          //   title: 'Quốc gia',
                          //   child: DropDownField(
                          //     items: countries
                          //         .map((String country) =>
                          //             SelectedListItem(name: country))
                          //         .toList(),
                          //     selectedItems: selectedCountry != null
                          //         ? [SelectedListItem(name: selectedCountry!)]
                          //         : [],
                          //     onChanged: (value) {
                          //       if (value.isNotEmpty) {
                          //         setModalState(() {
                          //           selectedCountry = value[0].name;
                          //         });
                          //       }
                          //     },
                          //   ),
                          // ),
                          SizedBox(height: 16.h),
                          // Lọc theo ngôn ngữ với tìm kiếm
                          // _buildFilterSection(
                          //   title: 'Ngôn ngữ',
                          //   child: DropDownField(
                          //     items: languages
                          //         .map((String language) =>
                          //             SelectedListItem(name: language))
                          //         .toList(),
                          //     selectedItems: selectedLanguage != null
                          //         ? [SelectedListItem(name: selectedLanguage!)]
                          //         : [],
                          //     onChanged: (value) {
                          //       if (value.isNotEmpty) {
                          //         setModalState(() {
                          //           selectedLanguage = value[0].name;
                          //         });
                          //       }
                          //     },
                          //   ),
                          // ),
                          SizedBox(height: 16.h),
                          // Lọc theo giá tiền (VNĐ)
                          _buildFilterSection(
                            title: 'Giá tiền (VNĐ)',
                            child: Column(
                              children: [
                                RangeSlider(
                                  values: priceRange,
                                  min: 0,
                                  max: 5000000,
                                  divisions: 50,
                                  labels: RangeLabels(
                                    '${priceRange.start.round().toStringAsFixed(0)} VNĐ',
                                    '${priceRange.end.round().toStringAsFixed(0)} VNĐ',
                                  ),
                                  onChanged: (RangeValues values) {
                                    setModalState(() {
                                      priceRange = values;
                                    });
                                  },
                                  activeColor: Colors.blue,
                                  inactiveColor: Colors.grey.shade300,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('0 VNĐ',
                                        style: TextStyle(fontSize: 14.sp)),
                                    Text('5,000,000 VNĐ',
                                        style: TextStyle(fontSize: 14.sp)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),
                          // Lọc theo danh mục
                          _buildFilterSection(
                            title: 'Danh mục',
                            child: DropdownButtonFormField<String>(
                              value: selectedCategory,
                              decoration: _inputDecoration('Chọn danh mục'),
                              items: categories.map((String category) {
                                return DropdownMenuItem<String>(
                                  value: category,
                                  child: Text(category),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setModalState(() {
                                  selectedCategory = newValue;
                                });
                              },
                            ),
                          ),
                          SizedBox(height: 16.h),
                          // Lọc theo thứ
                          _buildFilterSection(
                            title: 'Thứ trong tuần',
                            child: DropdownButtonFormField<String>(
                              value: selectedDayOfWeek,
                              decoration: _inputDecoration('Chọn thứ'),
                              items: daysOfWeek.map((String day) {
                                return DropdownMenuItem<String>(
                                  value: day,
                                  child: Text(day),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setModalState(() {
                                  selectedDayOfWeek = newValue;
                                });
                              },
                            ),
                          ),
                          SizedBox(height: 16.h),
                          // Lọc theo khung giờ
                          _buildFilterSection(
                            title: 'Khung giờ',
                            child: DropdownButtonFormField<String>(
                              value: selectedTimeSlot,
                              decoration: _inputDecoration('Chọn khung giờ'),
                              items: timeSlots.map((String slot) {
                                return DropdownMenuItem<String>(
                                  value: slot,
                                  child: Text(slot),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setModalState(() {
                                  selectedTimeSlot = newValue;
                                });
                              },
                            ),
                          ),
                          SizedBox(height: 16.h),
                          // Lọc theo ngày trong tháng
                          _buildFilterSection(
                            title: 'Ngày trong tháng',
                            child: DropdownButtonFormField<String>(
                              value: selectedDayOfMonth,
                              decoration: _inputDecoration('Chọn ngày'),
                              items: daysOfMonth.map((String day) {
                                return DropdownMenuItem<String>(
                                  value: day,
                                  child: Text(day),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setModalState(() {
                                  selectedDayOfMonth = newValue;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Nút áp dụng
                  SizedBox(height: 16.h),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Xử lý logic áp dụng bộ lọc
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(double.infinity, 48.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      'Áp dụng bộ lọc',
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  // Hàm hỗ trợ tạo section lọc
  Widget _buildFilterSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8.h),
        child,
      ],
    );
  }

  // Hàm hỗ trợ tạo decoration cho Dropdown
  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
    );
  }
}
