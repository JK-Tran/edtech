// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Nam`
  String get male {
    return Intl.message(
      'Nam',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Nữ`
  String get female {
    return Intl.message(
      'Nữ',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Khác`
  String get other {
    return Intl.message(
      'Khác',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng anh`
  String get english {
    return Intl.message(
      'Tiếng anh',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng việt`
  String get vietnamese {
    return Intl.message(
      'Tiếng việt',
      name: 'vietnamese',
      desc: '',
      args: [],
    );
  }

  /// `Hiển thị tiêu đề đếm`
  String get counterAppBarTitle {
    return Intl.message(
      'Hiển thị tiêu đề đếm',
      name: 'counterAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Về giáo viên này`
  String get about_this_teacher {
    return Intl.message(
      'Về giáo viên này',
      name: 'about_this_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Lý do nghỉ`
  String get absence__absence_details__absence_reason {
    return Intl.message(
      'Lý do nghỉ',
      name: 'absence__absence_details__absence_reason',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian nghỉ`
  String get absence__absence_details__absence_time {
    return Intl.message(
      'Thời gian nghỉ',
      name: 'absence__absence_details__absence_time',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết báo nghỉ`
  String get absence__absence_details__header_text__absence_detail {
    return Intl.message(
      'Chi tiết báo nghỉ',
      name: 'absence__absence_details__header_text__absence_detail',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu báo nghỉ`
  String get absence__absence_details__label_text__absence_request {
    return Intl.message(
      'Yêu cầu báo nghỉ',
      name: 'absence__absence_details__label_text__absence_request',
      desc: '',
      args: [],
    );
  }

  /// `Quý học viên vui lòng lưu ý thời gian nghỉ để sắp xếp thời gian hợp lý nhé`
  String get absence__absence_details__label_text_notice {
    return Intl.message(
      'Quý học viên vui lòng lưu ý thời gian nghỉ để sắp xếp thời gian hợp lý nhé',
      name: 'absence__absence_details__label_text_notice',
      desc: '',
      args: [],
    );
  }

  /// `Đã hủy`
  String get absence__absence_details__status_canceled {
    return Intl.message(
      'Đã hủy',
      name: 'absence__absence_details__status_canceled',
      desc: '',
      args: [],
    );
  }

  /// `Thành công`
  String get absence__absence_details__status_success {
    return Intl.message(
      'Thành công',
      name: 'absence__absence_details__status_success',
      desc: '',
      args: [],
    );
  }

  /// `CSKH hỗ trợ học viên báo nghỉ`
  String get absence__absence_details_by_cs {
    return Intl.message(
      'CSKH hỗ trợ học viên báo nghỉ',
      name: 'absence__absence_details_by_cs',
      desc: '',
      args: [],
    );
  }

  /// `Học viên báo nghỉ`
  String get absence__absence_details_by_student {
    return Intl.message(
      'Học viên báo nghỉ',
      name: 'absence__absence_details_by_student',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên báo nghỉ`
  String get absence__absence_details_by_teacher {
    return Intl.message(
      'Giáo viên báo nghỉ',
      name: 'absence__absence_details_by_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên báo nghỉ hộ`
  String get absence__absence_details_by_teacher_for_student {
    return Intl.message(
      'Giáo viên báo nghỉ hộ',
      name: 'absence__absence_details_by_teacher_for_student',
      desc: '',
      args: [],
    );
  }

  /// `Được tạo vào`
  String get absence__absence_details_created_at {
    return Intl.message(
      'Được tạo vào',
      name: 'absence__absence_details_created_at',
      desc: '',
      args: [],
    );
  }

  /// `Lý do xin nghỉ`
  String get absence__absence_session__absence_reason_text {
    return Intl.message(
      'Lý do xin nghỉ',
      name: 'absence__absence_session__absence_reason_text',
      desc: '',
      args: [],
    );
  }

  /// `Nhập chi tiết lý do`
  String get absence__absence_session__absence_reason_text_hint {
    return Intl.message(
      'Nhập chi tiết lý do',
      name: 'absence__absence_session__absence_reason_text_hint',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập lý do báo nghỉ`
  String get absence__absence_session__absence_reason_text_warning {
    return Intl.message(
      'Vui lòng nhập lý do báo nghỉ',
      name: 'absence__absence_session__absence_reason_text_warning',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập lý do báo nghỉ trên 10 ký tự`
  String get absence__absence_session__absence_reason_text_warning_1 {
    return Intl.message(
      'Vui lòng nhập lý do báo nghỉ trên 10 ký tự',
      name: 'absence__absence_session__absence_reason_text_warning_1',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đang báo nghỉ buổi học`
  String get absence__absence_session__label_text_absence {
    return Intl.message(
      'Bạn đang báo nghỉ buổi học',
      name: 'absence__absence_session__label_text_absence',
      desc: '',
      args: [],
    );
  }

  /// `Chọn ngày nghỉ theo lịch giáo viên`
  String
      get absence__absence_session__label_select_absence_date_base_on_the_teacher_schedule {
    return Intl.message(
      'Chọn ngày nghỉ theo lịch giáo viên',
      name:
          'absence__absence_session__label_select_absence_date_base_on_the_teacher_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Bỏ lỡ một buổi học? Không sao, mình lên lịch học bù liền nha`
  String get absence_absence_session__label_text_text_missed_a_class {
    return Intl.message(
      'Bỏ lỡ một buổi học? Không sao, mình lên lịch học bù liền nha',
      name: 'absence_absence_session__label_text_text_missed_a_class',
      desc: '',
      args: [],
    );
  }

  /// `Chọn ngày học bù nào`
  String get absence_absence_session__label_text_pick_make_up_class_date {
    return Intl.message(
      'Chọn ngày học bù nào',
      name: 'absence_absence_session__label_text_pick_make_up_class_date',
      desc: '',
      args: [],
    );
  }

  /// `Chọn ngày`
  String get absence_absence_session__label_text_choose_day {
    return Intl.message(
      'Chọn ngày',
      name: 'absence_absence_session__label_text_choose_day',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian đã chọn`
  String get absence_absence_session__label_text_selected_make_up_class_time {
    return Intl.message(
      'Thời gian đã chọn',
      name: 'absence_absence_session__label_text_selected_make_up_class_time',
      desc: '',
      args: [],
    );
  }

  /// `Chọn thời gian`
  String get absence_absence_session__label_text_selecte_time {
    return Intl.message(
      'Chọn thời gian',
      name: 'absence_absence_session__label_text_selecte_time',
      desc: '',
      args: [],
    );
  }

  /// `Sửa`
  String get absence_absence_session__label_text_edit_time {
    return Intl.message(
      'Sửa',
      name: 'absence_absence_session__label_text_edit_time',
      desc: '',
      args: [],
    );
  }

  /// `Không có giờ trống trong ngày này`
  String get absence_absence_session__label_text_no_available_time {
    return Intl.message(
      'Không có giờ trống trong ngày này',
      name: 'absence_absence_session__label_text_no_available_time',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian học bù`
  String get absence_absence_session__label_text_make_up_class_time {
    return Intl.message(
      'Thời gian học bù',
      name: 'absence_absence_session__label_text_make_up_class_time',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên xác nhận học bù`
  String
      get absence_absence_session__label_text_makeup_date_confirm_by_teacher {
    return Intl.message(
      'Giáo viên xác nhận học bù',
      name:
          'absence_absence_session__label_text_makeup_date_confirm_by_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Báo nghỉ {courseType} lúc {hour} ngày {dateMonth}`
  String absence_at(Object courseType, Object hour, Object dateMonth) {
    return Intl.message(
      'Báo nghỉ $courseType lúc $hour ngày $dateMonth',
      name: 'absence_at',
      desc: '',
      args: [courseType, hour, dateMonth],
    );
  }

  /// `Lý do được xác nhận vào {time}`
  String absence_confirmed_at(Object time) {
    return Intl.message(
      'Lý do được xác nhận vào $time',
      name: 'absence_confirmed_at',
      desc: '',
      args: [time],
    );
  }

  /// `Báo nghỉ khóa học`
  String get absence_course {
    return Intl.message(
      'Báo nghỉ khóa học',
      name: 'absence_course',
      desc: '',
      args: [],
    );
  }

  /// `Báo nghỉ không thành công`
  String get absence_fail {
    return Intl.message(
      'Báo nghỉ không thành công',
      name: 'absence_fail',
      desc: '',
      args: [],
    );
  }

  /// `Lịch sử báo nghỉ`
  String get absence_history__header_text__absence_history {
    return Intl.message(
      'Lịch sử báo nghỉ',
      name: 'absence_history__header_text__absence_history',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học báo nghỉ`
  String get absence_history__label_text__absence_session {
    return Intl.message(
      'Buổi học báo nghỉ',
      name: 'absence_history__label_text__absence_session',
      desc: '',
      args: [],
    );
  }

  /// `Để hủy yêu cầu báo nghỉ vui lòng liên hệ`
  String get absence_history__label_text_cancel_absence_request {
    return Intl.message(
      'Để hủy yêu cầu báo nghỉ vui lòng liên hệ',
      name: 'absence_history__label_text_cancel_absence_request',
      desc: '',
      args: [],
    );
  }

  /// `Giúp {userType} và bộ phận hỗ trợ nắm thông tin.`
  String absence_infomation(Object userType) {
    return Intl.message(
      'Giúp $userType và bộ phận hỗ trợ nắm thông tin.',
      name: 'absence_infomation',
      desc: '',
      args: [userType],
    );
  }

  /// `Báo nghỉ`
  String get absence_notice {
    return Intl.message(
      'Báo nghỉ',
      name: 'absence_notice',
      desc: '',
      args: [],
    );
  }

  /// `Quy định lớp học 1 kèm 1`
  String get absence_policy__header_text_policy_1_on_1 {
    return Intl.message(
      'Quy định lớp học 1 kèm 1',
      name: 'absence_policy__header_text_policy_1_on_1',
      desc: '',
      args: [],
    );
  }

  /// `- Học viên báo nghỉ trước khi giờ học diễn ra, buổi học được bảo lưu và không tính phí.\n- Học viên báo nghỉ sau khi giờ học bắt đầu, giáo viên được ghi nhận 50% thời lượng buổi học.\n- Học viên không báo nghỉ, nếu giáo viên chờ suốt buổi học thì giáo viên có quyền xác nhận tính phí buổi học đó hoặc giáo viên có thể báo nghỉ hộ học viên và buổi học sẽ không bị tính phí.`
  String get absence_policy__label_text_for_student_content {
    return Intl.message(
      '- Học viên báo nghỉ trước khi giờ học diễn ra, buổi học được bảo lưu và không tính phí.\n- Học viên báo nghỉ sau khi giờ học bắt đầu, giáo viên được ghi nhận 50% thời lượng buổi học.\n- Học viên không báo nghỉ, nếu giáo viên chờ suốt buổi học thì giáo viên có quyền xác nhận tính phí buổi học đó hoặc giáo viên có thể báo nghỉ hộ học viên và buổi học sẽ không bị tính phí.',
      name: 'absence_policy__label_text_for_student_content',
      desc: '',
      args: [],
    );
  }

  /// `Với học viên`
  String get absence_policy__label_text_for_student_title {
    return Intl.message(
      'Với học viên',
      name: 'absence_policy__label_text_for_student_title',
      desc: '',
      args: [],
    );
  }

  /// `- Giáo viên báo nghỉ trước khi giờ học diễn ra, buổi học được bảo lưu và không tính phí.\n- Giáo viên không báo nghỉ, tới giờ học học viên chờ quá 5 phút mà giáo viên chưa có mặt, giáo viên sẽ bị phạt 1 buổi học tương ứng và buổi học này được cộng trực tiếp vào khóa học của học viên`
  String get absence_policy__label_text_for_teacher_content {
    return Intl.message(
      '- Giáo viên báo nghỉ trước khi giờ học diễn ra, buổi học được bảo lưu và không tính phí.\n- Giáo viên không báo nghỉ, tới giờ học học viên chờ quá 5 phút mà giáo viên chưa có mặt, giáo viên sẽ bị phạt 1 buổi học tương ứng và buổi học này được cộng trực tiếp vào khóa học của học viên',
      name: 'absence_policy__label_text_for_teacher_content',
      desc: '',
      args: [],
    );
  }

  /// `Với giáo viên sẽ được áp dụng tương tự`
  String get absence_policy__label_text_for_teacher_title {
    return Intl.message(
      'Với giáo viên sẽ được áp dụng tương tự',
      name: 'absence_policy__label_text_for_teacher_title',
      desc: '',
      args: [],
    );
  }

  /// `Lưu ý: Học viên có thể gỡ phạt cho giáo viên bằng ứng dụng quản lý lớp học và Antoree sẽ thu hồi lại buổi học đã tặng cho học viên.`
  String get absence_policy__label_text_notice {
    return Intl.message(
      'Lưu ý: Học viên có thể gỡ phạt cho giáo viên bằng ứng dụng quản lý lớp học và Antoree sẽ thu hồi lại buổi học đã tặng cho học viên.',
      name: 'absence_policy__label_text_notice',
      desc: '',
      args: [],
    );
  }

  /// `Học viên không nên nghỉ quá 2 buổi/tháng để đảm bảo hiệu quả khóa học`
  String get absence_policy__label_text_should {
    return Intl.message(
      'Học viên không nên nghỉ quá 2 buổi/tháng để đảm bảo hiệu quả khóa học',
      name: 'absence_policy__label_text_should',
      desc: '',
      args: [],
    );
  }

  /// `Quy định báo nghỉ`
  String get absence_rule {
    return Intl.message(
      'Quy định báo nghỉ',
      name: 'absence_rule',
      desc: '',
      args: [],
    );
  }

  /// `Báo nghỉ không thành công! Vui lòng kiểm tra lại thời gian báo nghỉ và thử lại.`
  String get absence_unsuccessfully {
    return Intl.message(
      'Báo nghỉ không thành công! Vui lòng kiểm tra lại thời gian báo nghỉ và thử lại.',
      name: 'absence_unsuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Xin chào <0>, Yêu cầu báo nghỉ buổi học <1> đã được HỦY thành công`
  String get absent_notification_cancel {
    return Intl.message(
      'Xin chào <0>, Yêu cầu báo nghỉ buổi học <1> đã được HỦY thành công',
      name: 'absent_notification_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Lộ trình đã đạt`
  String get achieved_roadmap {
    return Intl.message(
      'Lộ trình đã đạt',
      name: 'achieved_roadmap',
      desc: '',
      args: [],
    );
  }

  /// `Thành tựu`
  String get achievement {
    return Intl.message(
      'Thành tựu',
      name: 'achievement',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ`
  String get address {
    return Intl.message(
      'Địa chỉ',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Tất cả khoá học`
  String get all_courses {
    return Intl.message(
      'Tất cả khoá học',
      name: 'all_courses',
      desc: '',
      args: [],
    );
  }

  /// `Tất cả buổi học`
  String get all_sessions {
    return Intl.message(
      'Tất cả buổi học',
      name: 'all_sessions',
      desc: '',
      args: [],
    );
  }

  /// `Tất cả giáo viên`
  String get all_teacher {
    return Intl.message(
      'Tất cả giáo viên',
      name: 'all_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Antoree`
  String get app_name {
    return Intl.message(
      'Antoree',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Giao diện`
  String get appearance {
    return Intl.message(
      'Giao diện',
      name: 'appearance',
      desc: '',
      args: [],
    );
  }

  /// `Tỉ lệ chuyên cần`
  String get attendance_rate {
    return Intl.message(
      'Tỉ lệ chuyên cần',
      name: 'attendance_rate',
      desc: '',
      args: [],
    );
  }

  /// `Khóa học hiện có`
  String get available_courses {
    return Intl.message(
      'Khóa học hiện có',
      name: 'available_courses',
      desc: '',
      args: [],
    );
  }

  /// `Có thể chọn`
  String get available_slot {
    return Intl.message(
      'Có thể chọn',
      name: 'available_slot',
      desc: '',
      args: [],
    );
  }

  /// `Lịch rảnh`
  String get available_time {
    return Intl.message(
      'Lịch rảnh',
      name: 'available_time',
      desc: '',
      args: [],
    );
  }

  /// `Bắt đầu`
  String get begin {
    return Intl.message(
      'Bắt đầu',
      name: 'begin',
      desc: '',
      args: [],
    );
  }

  /// `Ngày sinh`
  String get birthday {
    return Intl.message(
      'Ngày sinh',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `Thời lượng được tặng`
  String get bonus_duration {
    return Intl.message(
      'Thời lượng được tặng',
      name: 'bonus_duration',
      desc: '',
      args: [],
    );
  }

  /// `Tên sách`
  String get book_name {
    return Intl.message(
      'Tên sách',
      name: 'book_name',
      desc: '',
      args: [],
    );
  }

  /// `Chọn lịch`
  String get book_schedule {
    return Intl.message(
      'Chọn lịch',
      name: 'book_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Đơn xin nghỉ của <0> đã bị hủy!`
  String get cancel_a_leave_absence_at {
    return Intl.message(
      'Đơn xin nghỉ của <0> đã bị hủy!',
      name: 'cancel_a_leave_absence_at',
      desc: '',
      args: [],
    );
  }

  /// `Hủy yêu cầu`
  String get cancel_request {
    return Intl.message(
      'Hủy yêu cầu',
      name: 'cancel_request',
      desc: '',
      args: [],
    );
  }

  /// `Huỷ lịch`
  String get cancel_schedule {
    return Intl.message(
      'Huỷ lịch',
      name: 'cancel_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Bỏ chọn`
  String get cancel_selected {
    return Intl.message(
      'Bỏ chọn',
      name: 'cancel_selected',
      desc: '',
      args: [],
    );
  }

  /// `Đã huỷ`
  String get cancelled {
    return Intl.message(
      'Đã huỷ',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Tìm hoài, tìm mãi vẫn chẳng thấy gì !`
  String get cant_find {
    return Intl.message(
      'Tìm hoài, tìm mãi vẫn chẳng thấy gì !',
      name: 'cant_find',
      desc: '',
      args: [],
    );
  }

  /// `Người hỗ trợ`
  String get carer {
    return Intl.message(
      'Người hỗ trợ',
      name: 'carer',
      desc: '',
      args: [],
    );
  }

  /// `Hoàn thành lúc`
  String get certificate__details__completed_date {
    return Intl.message(
      'Hoàn thành lúc',
      name: 'certificate__details__completed_date',
      desc: '',
      args: [],
    );
  }

  /// `Úi! Bạn chưa hoàn thành khóa học nào. Hãy tiếp tục học thật chăm chỉ nhé!`
  String get certificate__error_text__certificates_empty {
    return Intl.message(
      'Úi! Bạn chưa hoàn thành khóa học nào. Hãy tiếp tục học thật chăm chỉ nhé!',
      name: 'certificate__error_text__certificates_empty',
      desc: '',
      args: [],
    );
  }

  /// `Giấy chứng nhận`
  String get certificate__header_text__certificates {
    return Intl.message(
      'Giấy chứng nhận',
      name: 'certificate__header_text__certificates',
      desc: '',
      args: [],
    );
  }

  /// `Đổi lịch`
  String get change_calendar {
    return Intl.message(
      'Đổi lịch',
      name: 'change_calendar',
      desc: '',
      args: [],
    );
  }

  /// `Đổi mật khẩu`
  String get change_password__button_text__change_password {
    return Intl.message(
      'Đổi mật khẩu',
      name: 'change_password__button_text__change_password',
      desc: '',
      args: [],
    );
  }

  /// `Đổi mật khẩu`
  String get change_password__header_text_change_password {
    return Intl.message(
      'Đổi mật khẩu',
      name: 'change_password__header_text_change_password',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mật khẩu hiện tại`
  String get change_password__label_text__current_password {
    return Intl.message(
      'Nhập mật khẩu hiện tại',
      name: 'change_password__label_text__current_password',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mật khẩu mới`
  String get change_password__label_text__new_password {
    return Intl.message(
      'Nhập mật khẩu mới',
      name: 'change_password__label_text__new_password',
      desc: '',
      args: [],
    );
  }

  /// `Thay đổi mật khẩu thành công`
  String get change_password_successfully {
    return Intl.message(
      'Thay đổi mật khẩu thành công',
      name: 'change_password_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Thay đổi lịch học`
  String get change_study_calendar {
    return Intl.message(
      'Thay đổi lịch học',
      name: 'change_study_calendar',
      desc: '',
      args: [],
    );
  }

  /// `Đổi giáo viên`
  String get change_teacher {
    return Intl.message(
      'Đổi giáo viên',
      name: 'change_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Đổi chủ đề`
  String get change_topic {
    return Intl.message(
      'Đổi chủ đề',
      name: 'change_topic',
      desc: '',
      args: [],
    );
  }

  /// `Trẻ em`
  String get child {
    return Intl.message(
      'Trẻ em',
      name: 'child',
      desc: '',
      args: [],
    );
  }

  /// `Xin hãy chọn ngày khác`
  String get choose_another_date {
    return Intl.message(
      'Xin hãy chọn ngày khác',
      name: 'choose_another_date',
      desc: '',
      args: [],
    );
  }

  /// `Chọn khóa học`
  String get choose_course {
    return Intl.message(
      'Chọn khóa học',
      name: 'choose_course',
      desc: '',
      args: [],
    );
  }

  /// `Chọn ngày`
  String get choose_date {
    return Intl.message(
      'Chọn ngày',
      name: 'choose_date',
      desc: '',
      args: [],
    );
  }

  /// `Chọn lĩnh vực`
  String get choose_field_of_work {
    return Intl.message(
      'Chọn lĩnh vực',
      name: 'choose_field_of_work',
      desc: '',
      args: [],
    );
  }

  /// `Hãy chọn giới tính`
  String get choose_gender {
    return Intl.message(
      'Hãy chọn giới tính',
      name: 'choose_gender',
      desc: '',
      args: [],
    );
  }

  /// `Chon quốc tịch`
  String get choose_nationality {
    return Intl.message(
      'Chon quốc tịch',
      name: 'choose_nationality',
      desc: '',
      args: [],
    );
  }

  /// `Chọn buổi học`
  String get choose_session {
    return Intl.message(
      'Chọn buổi học',
      name: 'choose_session',
      desc: '',
      args: [],
    );
  }

  /// `Hãy chọn chương trình học`
  String get choose_study_program {
    return Intl.message(
      'Hãy chọn chương trình học',
      name: 'choose_study_program',
      desc: '',
      args: [],
    );
  }

  /// `Chọn mức học phí tham gia`
  String get choose_suitable_price {
    return Intl.message(
      'Chọn mức học phí tham gia',
      name: 'choose_suitable_price',
      desc: '',
      args: [],
    );
  }

  /// `Chọn giáo viên`
  String get choose_teacher {
    return Intl.message(
      'Chọn giáo viên',
      name: 'choose_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Chọn thời gian`
  String get choose_time {
    return Intl.message(
      'Chọn thời gian',
      name: 'choose_time',
      desc: '',
      args: [],
    );
  }

  /// `Chọn người dùng`
  String get choose_user {
    return Intl.message(
      'Chọn người dùng',
      name: 'choose_user',
      desc: '',
      args: [],
    );
  }

  /// `Đã đóng`
  String get closed {
    return Intl.message(
      'Đã đóng',
      name: 'closed',
      desc: '',
      args: [],
    );
  }

  /// `Đang đóng`
  String get closing {
    return Intl.message(
      'Đang đóng',
      name: 'closing',
      desc: '',
      args: [],
    );
  }

  /// `Sắp ra mắt`
  String get coming_soon {
    return Intl.message(
      'Sắp ra mắt',
      name: 'coming_soon',
      desc: '',
      args: [],
    );
  }

  /// `Quá thời gian xử lý yêu cầu`
  String get common___error__timeout_exception {
    return Intl.message(
      'Quá thời gian xử lý yêu cầu',
      name: 'common___error__timeout_exception',
      desc: '',
      args: [],
    );
  }

  /// `Chấp nhận`
  String get common__action__accept {
    return Intl.message(
      'Chấp nhận',
      name: 'common__action__accept',
      desc: '',
      args: [],
    );
  }

  /// `Thêm`
  String get common__action__add {
    return Intl.message(
      'Thêm',
      name: 'common__action__add',
      desc: '',
      args: [],
    );
  }

  /// `Áp dụng`
  String get common__action__apply {
    return Intl.message(
      'Áp dụng',
      name: 'common__action__apply',
      desc: '',
      args: [],
    );
  }

  /// `Quay lại`
  String get common__action__back {
    return Intl.message(
      'Quay lại',
      name: 'common__action__back',
      desc: '',
      args: [],
    );
  }

  /// `Về trang chủ`
  String get common__action__back_to_home {
    return Intl.message(
      'Về trang chủ',
      name: 'common__action__back_to_home',
      desc: '',
      args: [],
    );
  }

  /// `Gọi`
  String get common__action__call_phone_number {
    return Intl.message(
      'Gọi',
      name: 'common__action__call_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Hủy bỏ`
  String get common__action__cancel {
    return Intl.message(
      'Hủy bỏ',
      name: 'common__action__cancel',
      desc: '',
      args: [],
    );
  }

  /// `Huỷ`
  String get common__action__cancel_s {
    return Intl.message(
      'Huỷ',
      name: 'common__action__cancel_s',
      desc: '',
      args: [],
    );
  }

  /// `Đóng`
  String get common__action__close {
    return Intl.message(
      'Đóng',
      name: 'common__action__close',
      desc: '',
      args: [],
    );
  }

  /// `Thu gọn`
  String get common__action__collapse {
    return Intl.message(
      'Thu gọn',
      name: 'common__action__collapse',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận`
  String get common__action__confirm {
    return Intl.message(
      'Xác nhận',
      name: 'common__action__confirm',
      desc: '',
      args: [],
    );
  }

  /// `Xóa`
  String get common__action__delete {
    return Intl.message(
      'Xóa',
      name: 'common__action__delete',
      desc: '',
      args: [],
    );
  }

  /// `Bỏ qua`
  String get common__action__dismiss {
    return Intl.message(
      'Bỏ qua',
      name: 'common__action__dismiss',
      desc: '',
      args: [],
    );
  }

  /// `Xong`
  String get common__action__done {
    return Intl.message(
      'Xong',
      name: 'common__action__done',
      desc: '',
      args: [],
    );
  }

  /// `Tải`
  String get common__action__download {
    return Intl.message(
      'Tải',
      name: 'common__action__download',
      desc: '',
      args: [],
    );
  }

  /// `Ẩn`
  String get common__action__hide {
    return Intl.message(
      'Ẩn',
      name: 'common__action__hide',
      desc: '',
      args: [],
    );
  }

  /// `Để sau`
  String get common__action__later {
    return Intl.message(
      'Để sau',
      name: 'common__action__later',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo`
  String get common__action__report {
    return Intl.message(
      'Báo cáo',
      name: 'common__action__report',
      desc: '',
      args: [],
    );
  }

  /// `Bỏ qua`
  String get common__action__skip {
    return Intl.message(
      'Bỏ qua',
      name: 'common__action__skip',
      desc: '',
      args: [],
    );
  }

  /// `Xem`
  String get common__action__view {
    return Intl.message(
      'Xem',
      name: 'common__action__view',
      desc: '',
      args: [],
    );
  }

  /// `Xem chi tiết`
  String get common__action__view_detail {
    return Intl.message(
      'Xem chi tiết',
      name: 'common__action__view_detail',
      desc: '',
      args: [],
    );
  }

  /// `Xem thêm`
  String get common__action__view_more {
    return Intl.message(
      'Xem thêm',
      name: 'common__action__view_more',
      desc: '',
      args: [],
    );
  }

  /// `Tuổi`
  String get common__age {
    return Intl.message(
      'Tuổi',
      name: 'common__age',
      desc: '',
      args: [],
    );
  }

  /// `Tất cả`
  String get common__all {
    return Intl.message(
      'Tất cả',
      name: 'common__all',
      desc: '',
      args: [],
    );
  }

  /// `Tên ứng dụng`
  String get common__app_info__name {
    return Intl.message(
      'Tên ứng dụng',
      name: 'common__app_info__name',
      desc: '',
      args: [],
    );
  }

  /// `Phiên bản ứng dụng`
  String get common__app_info__version {
    return Intl.message(
      'Phiên bản ứng dụng',
      name: 'common__app_info__version',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết`
  String get common__detail {
    return Intl.message(
      'Chi tiết',
      name: 'common__detail',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi định dạng hoặc giá trị không đúng`
  String get common__erorr__invalid_format_or_value {
    return Intl.message(
      'Lỗi định dạng hoặc giá trị không đúng',
      name: 'common__erorr__invalid_format_or_value',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin không hợp lệ`
  String get common__erorr__invalid_information {
    return Intl.message(
      'Thông tin không hợp lệ',
      name: 'common__erorr__invalid_information',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu mới không hợp lệ!`
  String get common__erorr__validation_new_password {
    return Intl.message(
      'Mật khẩu mới không hợp lệ!',
      name: 'common__erorr__validation_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu không hợp lệ!`
  String get common__erorr__validation_password {
    return Intl.message(
      'Mật khẩu không hợp lệ!',
      name: 'common__erorr__validation_password',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại không hợp lệ`
  String get common__erorr__validation_phone_number {
    return Intl.message(
      'Số điện thoại không hợp lệ',
      name: 'common__erorr__validation_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Ngày và giờ không hợp lệ`
  String get common__error___validation_date_time {
    return Intl.message(
      'Ngày và giờ không hợp lệ',
      name: 'common__error___validation_date_time',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi chứng chỉ không hợp lệ`
  String get common__error__bad_certificate {
    return Intl.message(
      'Lỗi chứng chỉ không hợp lệ',
      name: 'common__error__bad_certificate',
      desc: '',
      args: [],
    );
  }

  /// `Không thể kết nết đến server`
  String get common__error__can_not_connect_to_host {
    return Intl.message(
      'Không thể kết nết đến server',
      name: 'common__error__can_not_connect_to_host',
      desc: '',
      args: [],
    );
  }

  /// `Không mở được`
  String get common__error__can_not_open {
    return Intl.message(
      'Không mở được',
      name: 'common__error__can_not_open',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi hành động bị hủy bỏ`
  String get common__error__cancellation_exception {
    return Intl.message(
      'Lỗi hành động bị hủy bỏ',
      name: 'common__error__cancellation_exception',
      desc: '',
      args: [],
    );
  }

  /// `Có lỗi xảy ra, chúng tôi đang khắc phục`
  String get common__error__fixing {
    return Intl.message(
      'Có lỗi xảy ra, chúng tôi đang khắc phục',
      name: 'common__error__fixing',
      desc: '',
      args: [],
    );
  }

  /// `Không có kết nối internet`
  String get common__error__no_internet_connectivity {
    return Intl.message(
      'Không có kết nối internet',
      name: 'common__error__no_internet_connectivity',
      desc: '',
      args: [],
    );
  }

  /// `Không có kết nối mạng`
  String get common__error__no_internet_exception {
    return Intl.message(
      'Không có kết nối mạng',
      name: 'common__error__no_internet_exception',
      desc: '',
      args: [],
    );
  }

  /// `Giá trị dữ liệu không hợp lệ`
  String get common__error__parse_exception {
    return Intl.message(
      'Giá trị dữ liệu không hợp lệ',
      name: 'common__error__parse_exception',
      desc: '',
      args: [],
    );
  }

  /// `Có lỗi xảy ra, xin hãy thử lại sau!`
  String get common__error__something_wrong {
    return Intl.message(
      'Có lỗi xảy ra, xin hãy thử lại sau!',
      name: 'common__error__something_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Token hết hạn`
  String get common__error__token_expired {
    return Intl.message(
      'Token hết hạn',
      name: 'common__error__token_expired',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi không xác định ({errorCode})`
  String common__error__unknown_exception(Object errorCode) {
    return Intl.message(
      'Lỗi không xác định ($errorCode)',
      name: 'common__error__unknown_exception',
      desc: '',
      args: [errorCode],
    );
  }

  /// `Email hoặc số điện thoại không hợp lệ`
  String get common__error__validation_email_or_phone_number {
    return Intl.message(
      'Email hoặc số điện thoại không hợp lệ',
      name: 'common__error__validation_email_or_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Mã xác thực không hợp lệ`
  String get common__error__validation_otp_code {
    return Intl.message(
      'Mã xác thực không hợp lệ',
      name: 'common__error__validation_otp_code',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu xác nhận không được để trống`
  String get common__error__validtion__confirm_passord_empty {
    return Intl.message(
      'Mật khẩu xác nhận không được để trống',
      name: 'common__error__validtion__confirm_passord_empty',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu xác nhận không trùng`
  String get common__error__validtion__confirm_passord_miss_match {
    return Intl.message(
      'Mật khẩu xác nhận không trùng',
      name: 'common__error__validtion__confirm_passord_miss_match',
      desc: '',
      args: [],
    );
  }

  /// `Email không được để trống`
  String get common__error__validtion_empty_email {
    return Intl.message(
      'Email không được để trống',
      name: 'common__error__validtion_empty_email',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin này không được để trống`
  String get common__error__validtion_required_field {
    return Intl.message(
      'Thông tin này không được để trống',
      name: 'common__error__validtion_required_field',
      desc: '',
      args: [],
    );
  }

  /// `Học tập`
  String get common__learning {
    return Intl.message(
      'Học tập',
      name: 'common__learning',
      desc: '',
      args: [],
    );
  }

  /// `(Trống)`
  String get common__message__empty {
    return Intl.message(
      '(Trống)',
      name: 'common__message__empty',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 4`
  String get common__month__april {
    return Intl.message(
      'Tháng 4',
      name: 'common__month__april',
      desc: '',
      args: [],
    );
  }

  /// `Apr`
  String get common__month__april_s {
    return Intl.message(
      'Apr',
      name: 'common__month__april_s',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 8`
  String get common__month__august {
    return Intl.message(
      'Tháng 8',
      name: 'common__month__august',
      desc: '',
      args: [],
    );
  }

  /// `Aug`
  String get common__month__august_s {
    return Intl.message(
      'Aug',
      name: 'common__month__august_s',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 11`
  String get common__month__november {
    return Intl.message(
      'Tháng 11',
      name: 'common__month__november',
      desc: '',
      args: [],
    );
  }

  /// `Nov`
  String get common__month__november_s {
    return Intl.message(
      'Nov',
      name: 'common__month__november_s',
      desc: '',
      args: [],
    );
  }

  /// `Bây giờ`
  String get common__now {
    return Intl.message(
      'Bây giờ',
      name: 'common__now',
      desc: '',
      args: [],
    );
  }

  /// `Bây giờ`
  String get common__present {
    return Intl.message(
      'Bây giờ',
      name: 'common__present',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin này không được để trống`
  String get common__required_field {
    return Intl.message(
      'Thông tin này không được để trống',
      name: 'common__required_field',
      desc: '',
      args: [],
    );
  }

  /// `Chiều`
  String get common__schedule__afternoon {
    return Intl.message(
      'Chiều',
      name: 'common__schedule__afternoon',
      desc: '',
      args: [],
    );
  }

  /// `Cài đặt`
  String get common__settings {
    return Intl.message(
      'Cài đặt',
      name: 'common__settings',
      desc: '',
      args: [],
    );
  }

  /// `(Chưa cập nhật nội dung)`
  String get common__text_hint__no_content {
    return Intl.message(
      '(Chưa cập nhật nội dung)',
      name: 'common__text_hint__no_content',
      desc: '',
      args: [],
    );
  }

  /// `(Chưa cập nhật tiêu đề)`
  String get common__text_hint__no_title {
    return Intl.message(
      '(Chưa cập nhật tiêu đề)',
      name: 'common__text_hint__no_title',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập {message} ít nhất {number} ký tự`
  String common__warning_text_required_minium_characters(
      Object message, Object number) {
    return Intl.message(
      'Vui lòng nhập $message ít nhất $number ký tự',
      name: 'common__warning_text_required_minium_characters',
      desc: '',
      args: [message, number],
    );
  }

  /// `Lỗi`
  String get common_error {
    return Intl.message(
      'Lỗi',
      name: 'common_error',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập mật khẩu`
  String get common_error_enter_pasword {
    return Intl.message(
      'Vui lòng nhập mật khẩu',
      name: 'common_error_enter_pasword',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập mật khẩu trên 8 ký tự`
  String get common_error_enter_pasword_minLength {
    return Intl.message(
      'Vui lòng nhập mật khẩu trên 8 ký tự',
      name: 'common_error_enter_pasword_minLength',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu không được dễ đoán`
  String get common_error_enter_pasword_simple {
    return Intl.message(
      'Mật khẩu không được dễ đoán',
      name: 'common_error_enter_pasword_simple',
      desc: '',
      args: [],
    );
  }

  /// `Mục tiêu thường gặp`
  String get common_goal {
    return Intl.message(
      'Mục tiêu thường gặp',
      name: 'common_goal',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu phải có ít nhất 8 kí tự (bao gồm số, chữ in hoa, chữ thường và ký hiệu)`
  String get common_password_pattern {
    return Intl.message(
      'Mật khẩu phải có ít nhất 8 kí tự (bao gồm số, chữ in hoa, chữ thường và ký hiệu)',
      name: 'common_password_pattern',
      desc: '',
      args: [],
    );
  }

  /// `Không thể mở đường dẫn do không hợp lệ.`
  String get common_url_cant_launched {
    return Intl.message(
      'Không thể mở đường dẫn do không hợp lệ.',
      name: 'common_url_cant_launched',
      desc: '',
      args: [],
    );
  }

  /// `So sánh kết quả`
  String get compare_the_results {
    return Intl.message(
      'So sánh kết quả',
      name: 'compare_the_results',
      desc: '',
      args: [],
    );
  }

  /// `Hoàn thành`
  String get complete {
    return Intl.message(
      'Hoàn thành',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `Đã hoàn thành`
  String get completed {
    return Intl.message(
      'Đã hoàn thành',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Lộ trình hoàn thành`
  String get completed_roadmap {
    return Intl.message(
      'Lộ trình hoàn thành',
      name: 'completed_roadmap',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết xác nhận`
  String get confirm__confirm_details__header_text__confirm_detail {
    return Intl.message(
      'Chi tiết xác nhận',
      name: 'confirm__confirm_details__header_text__confirm_detail',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên vào lớp lúc`
  String get confirm__confirm_details__label_info__teacher_join_at {
    return Intl.message(
      'Giáo viên vào lớp lúc',
      name: 'confirm__confirm_details__label_info__teacher_join_at',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên rời lớp lúc`
  String get confirm__confirm_details__label_info__teacher_leave_at {
    return Intl.message(
      'Giáo viên rời lớp lúc',
      name: 'confirm__confirm_details__label_info__teacher_leave_at',
      desc: '',
      args: [],
    );
  }

  /// `Quý học viên vui lòng kiểm tra thông tin và xác nhận giúp <0> nếu thông tin chính xác nhé`
  String get confirm__confirm_details__label_text_check_again {
    return Intl.message(
      'Quý học viên vui lòng kiểm tra thông tin và xác nhận giúp <0> nếu thông tin chính xác nhé',
      name: 'confirm__confirm_details__label_text_check_again',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu xác nhận buổi học`
  String get confirm__confirm_details__label_text_confirm_request {
    return Intl.message(
      'Yêu cầu xác nhận buổi học',
      name: 'confirm__confirm_details__label_text_confirm_request',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học này đã được tự động xác nhận`
  String get confirm__confirm_details__status_text__auto_confirmed {
    return Intl.message(
      'Buổi học này đã được tự động xác nhận',
      name: 'confirm__confirm_details__status_text__auto_confirmed',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học này đã được xác nhận`
  String get confirm__confirm_details__status_text__confirmed {
    return Intl.message(
      'Buổi học này đã được xác nhận',
      name: 'confirm__confirm_details__status_text__confirmed',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học này đã không được xác nhận`
  String get confirm__confirm_details__status_text__no_confirmed {
    return Intl.message(
      'Buổi học này đã không được xác nhận',
      name: 'confirm__confirm_details__status_text__no_confirmed',
      desc: '',
      args: [],
    );
  }

  /// `Thời lượng đã dạy (phút)`
  String get confirm__dialog_issue__confirm_duration_text {
    return Intl.message(
      'Thời lượng đã dạy (phút)',
      name: 'confirm__dialog_issue__confirm_duration_text',
      desc: '',
      args: [],
    );
  }

  /// `Thời lượng phải lớn hơn 1 phút`
  String get confirm__dialog_issue__confirm_duration_text_greater {
    return Intl.message(
      'Thời lượng phải lớn hơn 1 phút',
      name: 'confirm__dialog_issue__confirm_duration_text_greater',
      desc: '',
      args: [],
    );
  }

  /// `Thời lượng phải nhỏ hơn thời lượng buổi học`
  String get confirm__dialog_issue__confirm_duration_text_less {
    return Intl.message(
      'Thời lượng phải nhỏ hơn thời lượng buổi học',
      name: 'confirm__dialog_issue__confirm_duration_text_less',
      desc: '',
      args: [],
    );
  }

  /// `Chuyện gì đã xảy ra?`
  String get confirm__dialog_issue__label_text {
    return Intl.message(
      'Chuyện gì đã xảy ra?',
      name: 'confirm__dialog_issue__label_text',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên vắng/không dạy`
  String get confirm__dialog_issue__text_option_1 {
    return Intl.message(
      'Giáo viên vắng/không dạy',
      name: 'confirm__dialog_issue__text_option_1',
      desc: '',
      args: [],
    );
  }

  /// `Dạy thiếu giờ`
  String get confirm__dialog_issue__text_option_2 {
    return Intl.message(
      'Dạy thiếu giờ',
      name: 'confirm__dialog_issue__text_option_2',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận thông tin`
  String get confirm_information {
    return Intl.message(
      'Xác nhận thông tin',
      name: 'confirm_information',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lại mật khẩu`
  String get confirm_password {
    return Intl.message(
      'Nhập lại mật khẩu',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận buổi học`
  String get confirm_session {
    return Intl.message(
      'Xác nhận buổi học',
      name: 'confirm_session',
      desc: '',
      args: [],
    );
  }

  /// `Áp dụng voucher`
  String get confirm_voucher {
    return Intl.message(
      'Áp dụng voucher',
      name: 'confirm_voucher',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận yêu cầu`
  String get confirm_your_request {
    return Intl.message(
      'Xác nhận yêu cầu',
      name: 'confirm_your_request',
      desc: '',
      args: [],
    );
  }

  /// `Đã xác nhận`
  String get confirmed {
    return Intl.message(
      'Đã xác nhận',
      name: 'confirmed',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học đã xác nhận`
  String get confirmed_unit {
    return Intl.message(
      'Buổi học đã xác nhận',
      name: 'confirmed_unit',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi kết nối`
  String get connection_error {
    return Intl.message(
      'Lỗi kết nối',
      name: 'connection_error',
      desc: '',
      args: [],
    );
  }

  /// `Không có kết nối mạng`
  String get connection_lost {
    return Intl.message(
      'Không có kết nối mạng',
      name: 'connection_lost',
      desc: '',
      args: [],
    );
  }

  /// `Liên hệ Antoree`
  String get contact_antoree {
    return Intl.message(
      'Liên hệ Antoree',
      name: 'contact_antoree',
      desc: '',
      args: [],
    );
  }

  /// `Người tạo`
  String get contract__details__creator {
    return Intl.message(
      'Người tạo',
      name: 'contract__details__creator',
      desc: '',
      args: [],
    );
  }

  /// `Người đại diện`
  String get contract__details__customer_service_name {
    return Intl.message(
      'Người đại diện',
      name: 'contract__details__customer_service_name',
      desc: '',
      args: [],
    );
  }

  /// `Giờ học`
  String get contract__details__duration {
    return Intl.message(
      'Giờ học',
      name: 'contract__details__duration',
      desc: '',
      args: [],
    );
  }

  /// `Giá trị`
  String get contract__details__total_price {
    return Intl.message(
      'Giá trị',
      name: 'contract__details__total_price',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa có hợp đồng nào`
  String get contract__error_text__contracts_empty {
    return Intl.message(
      'Bạn chưa có hợp đồng nào',
      name: 'contract__error_text__contracts_empty',
      desc: '',
      args: [],
    );
  }

  /// `Hợp đồng`
  String get contract__header_text__contracts {
    return Intl.message(
      'Hợp đồng',
      name: 'contract__header_text__contracts',
      desc: '',
      args: [],
    );
  }

  /// `Khóa học`
  String get course {
    return Intl.message(
      'Khóa học',
      name: 'course',
      desc: '',
      args: [],
    );
  }

  /// `Đã học`
  String get course__course_detail__duration_learned {
    return Intl.message(
      'Đã học',
      name: 'course__course_detail__duration_learned',
      desc: '',
      args: [],
    );
  }

  /// `Đã hủy`
  String get course__status__text__cancelled {
    return Intl.message(
      'Đã hủy',
      name: 'course__status__text__cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Đã đóng`
  String get course__status__text__closed {
    return Intl.message(
      'Đã đóng',
      name: 'course__status__text__closed',
      desc: '',
      args: [],
    );
  }

  /// `Tạm hoãn`
  String get course__status__text__delay {
    return Intl.message(
      'Tạm hoãn',
      name: 'course__status__text__delay',
      desc: '',
      args: [],
    );
  }

  /// `Đang mở`
  String get course__status__text__opening {
    return Intl.message(
      'Đang mở',
      name: 'course__status__text__opening',
      desc: '',
      args: [],
    );
  }

  /// `Trì hoãn`
  String get course__status__text__pending {
    return Intl.message(
      'Trì hoãn',
      name: 'course__status__text__pending',
      desc: '',
      args: [],
    );
  }

  /// `Các khoá được chọn sẽ tạm hoãn đến khi quý học viên bắt đầu học lại`
  String get course_absence_dialog_body {
    return Intl.message(
      'Các khoá được chọn sẽ tạm hoãn đến khi quý học viên bắt đầu học lại',
      name: 'course_absence_dialog_body',
      desc: '',
      args: [],
    );
  }

  /// `Báo nghỉ khóa học`
  String get course_absence_notice {
    return Intl.message(
      'Báo nghỉ khóa học',
      name: 'course_absence_notice',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết khoá học`
  String get course_detail {
    return Intl.message(
      'Chi tiết khoá học',
      name: 'course_detail',
      desc: '',
      args: [],
    );
  }

  /// `Thời lượng khóa học`
  String get course_duration {
    return Intl.message(
      'Thời lượng khóa học',
      name: 'course_duration',
      desc: '',
      args: [],
    );
  }

  /// `Mã khoá học`
  String get course_id {
    return Intl.message(
      'Mã khoá học',
      name: 'course_id',
      desc: '',
      args: [],
    );
  }

  /// `ID khoá học`
  String get course_id_s {
    return Intl.message(
      'ID khoá học',
      name: 'course_id_s',
      desc: '',
      args: [],
    );
  }

  /// `Tên khóa học`
  String get course_name {
    return Intl.message(
      'Tên khóa học',
      name: 'course_name',
      desc: '',
      args: [],
    );
  }

  /// `Không tìm thấy khóa học`
  String get course_not_found {
    return Intl.message(
      'Không tìm thấy khóa học',
      name: 'course_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký khóa học`
  String get course_register {
    return Intl.message(
      'Đăng ký khóa học',
      name: 'course_register',
      desc: '',
      args: [],
    );
  }

  /// `Khóa`
  String get course_s {
    return Intl.message(
      'Khóa',
      name: 'course_s',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học trong khoá`
  String get course_session {
    return Intl.message(
      'Buổi học trong khoá',
      name: 'course_session',
      desc: '',
      args: [],
    );
  }

  /// `Khóa`
  String get course_short {
    return Intl.message(
      'Khóa',
      name: 'course_short',
      desc: '',
      args: [],
    );
  }

  /// `Tạo tài khoản`
  String get create_an_account {
    return Intl.message(
      'Tạo tài khoản',
      name: 'create_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Tạo hồ sơ`
  String get create_profile {
    return Intl.message(
      'Tạo hồ sơ',
      name: 'create_profile',
      desc: '',
      args: [],
    );
  }

  /// `Tạo nhận xét buổi học`
  String get create_session_feedback {
    return Intl.message(
      'Tạo nhận xét buổi học',
      name: 'create_session_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Tạo kết quả kiểm tra`
  String get create_test_result {
    return Intl.message(
      'Tạo kết quả kiểm tra',
      name: 'create_test_result',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu hiện tại`
  String get current_password {
    return Intl.message(
      'Mật khẩu hiện tại',
      name: 'current_password',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu hiện tại không đúng`
  String get current_password_wrong {
    return Intl.message(
      'Mật khẩu hiện tại không đúng',
      name: 'current_password_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Giao diện tối`
  String get darkTheme {
    return Intl.message(
      'Giao diện tối',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `ngày`
  String get day {
    return Intl.message(
      'ngày',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `Ngày bắt đầu`
  String get day_started {
    return Intl.message(
      'Ngày bắt đầu',
      name: 'day_started',
      desc: '',
      args: [],
    );
  }

  /// `ngày`
  String get days {
    return Intl.message(
      'ngày',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `{days} ngày trước`
  String days_relative(Object days) {
    return Intl.message(
      '$days ngày trước',
      name: 'days_relative',
      desc: '',
      args: [days],
    );
  }

  /// `Tháng 12`
  String get december {
    return Intl.message(
      'Tháng 12',
      name: 'december',
      desc: '',
      args: [],
    );
  }

  /// `Dec`
  String get december_s {
    return Intl.message(
      'Dec',
      name: 'december_s',
      desc: '',
      args: [],
    );
  }

  /// `bằng cấp`
  String get degree {
    return Intl.message(
      'bằng cấp',
      name: 'degree',
      desc: '',
      args: [],
    );
  }

  /// `Tạm hoãn`
  String get delay {
    return Intl.message(
      'Tạm hoãn',
      name: 'delay',
      desc: '',
      args: [],
    );
  }

  /// `Xoá tài khoản`
  String get delete_account {
    return Intl.message(
      'Xoá tài khoản',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `{selectedItem} đã xoá sẽ không thể khôi phục bạn có chắc muốn xoá?`
  String delete_warning(Object selectedItem) {
    return Intl.message(
      '$selectedItem đã xoá sẽ không thể khôi phục bạn có chắc muốn xoá?',
      name: 'delete_warning',
      desc: '',
      args: [selectedItem],
    );
  }

  /// `Chi tiết của khoá học #{courseId}`
  String detail_of_course(Object courseId) {
    return Intl.message(
      'Chi tiết của khoá học #$courseId',
      name: 'detail_of_course',
      desc: '',
      args: [courseId],
    );
  }

  /// `Chi tiết lý do`
  String get detail_reason {
    return Intl.message(
      'Chi tiết lý do',
      name: 'detail_reason',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có chắc chắn muốn báo nghỉ buổi học này?`
  String get dialog__message__absence_confirm_message {
    return Intl.message(
      'Bạn có chắc chắn muốn báo nghỉ buổi học này?',
      name: 'dialog__message__absence_confirm_message',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu báo nghỉ của bạn đã được Antoree ghi nhận`
  String get dialog__message__absence_success_message {
    return Intl.message(
      'Yêu cầu báo nghỉ của bạn đã được Antoree ghi nhận',
      name: 'dialog__message__absence_success_message',
      desc: '',
      args: [],
    );
  }

  /// `Báo nghỉ thành công`
  String get dialog__message__absence_success_title {
    return Intl.message(
      'Báo nghỉ thành công',
      name: 'dialog__message__absence_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Sắp ra mắt`
  String get dialog__message__coming_soon_message {
    return Intl.message(
      'Sắp ra mắt',
      name: 'dialog__message__coming_soon_message',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có chắc muốn xác nhận giáo viên vắng mặt hoặc không dạy buổi học?`
  String get dialog__message__confirm_unit_no_message {
    return Intl.message(
      'Bạn có chắc muốn xác nhận giáo viên vắng mặt hoặc không dạy buổi học?',
      name: 'dialog__message__confirm_unit_no_message',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo này sẽ được gửi đến Antoree để xử lí. Bạn có cam đoan những gì bạn báo cáo là sự thật?`
  String get dialog__message__confirm_unit_report_message {
    return Intl.message(
      'Báo cáo này sẽ được gửi đến Antoree để xử lí. Bạn có cam đoan những gì bạn báo cáo là sự thật?',
      name: 'dialog__message__confirm_unit_report_message',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận buổi học thành công`
  String get dialog__message__confirm_unit_successful_title {
    return Intl.message(
      'Xác nhận buổi học thành công',
      name: 'dialog__message__confirm_unit_successful_title',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có chắc muốn xác nhận buổi học này không? `
  String get dialog__message__confirm_unit_yes_message {
    return Intl.message(
      'Bạn có chắc muốn xác nhận buổi học này không? ',
      name: 'dialog__message__confirm_unit_yes_message',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có chắc chắn muốn đóng ứng dụng?`
  String get dialog__message__exit_message {
    return Intl.message(
      'Bạn có chắc chắn muốn đóng ứng dụng?',
      name: 'dialog__message__exit_message',
      desc: '',
      args: [],
    );
  }

  /// `Tính năng sắp ra mắt`
  String get dialog__message__feature_coming_soon_message {
    return Intl.message(
      'Tính năng sắp ra mắt',
      name: 'dialog__message__feature_coming_soon_message',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá của bạn sẽ giúp nâng cao\nhiệu quả tới <0> cho buổi học tiếp theo.`
  String get dialog__message__feedback_note {
    return Intl.message(
      'Đánh giá của bạn sẽ giúp nâng cao\nhiệu quả tới <0> cho buổi học tiếp theo.',
      name: 'dialog__message__feedback_note',
      desc: '',
      args: [],
    );
  }

  /// `Nhận xét của bạn sẽ được hiển thị công khai`
  String get dialog__message__feedback_public_note {
    return Intl.message(
      'Nhận xét của bạn sẽ được hiển thị công khai',
      name: 'dialog__message__feedback_public_note',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá của bạn về buổi học đã được Antoree ghi nhận`
  String get dialog__message__feedback_success_message {
    return Intl.message(
      'Đánh giá của bạn về buổi học đã được Antoree ghi nhận',
      name: 'dialog__message__feedback_success_message',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá thành công`
  String get dialog__message__feedback_success_title {
    return Intl.message(
      'Đánh giá thành công',
      name: 'dialog__message__feedback_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có chắc muốn đăng xuất?`
  String get dialog__message__logout_message {
    return Intl.message(
      'Bạn có chắc muốn đăng xuất?',
      name: 'dialog__message__logout_message',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get dialog__message__logout_title {
    return Intl.message(
      'Đăng xuất',
      name: 'dialog__message__logout_title',
      desc: '',
      args: [],
    );
  }

  /// `Từ chối xác nhận buổi học thành công`
  String get dialog__message__reject_unit_successful_title {
    return Intl.message(
      'Từ chối xác nhận buổi học thành công',
      name: 'dialog__message__reject_unit_successful_title',
      desc: '',
      args: [],
    );
  }

  /// `Bạn vừa hoàn thành một buổi học.\nHãy chia sẻ nhận xét về buổi học để chúng tôi có thể cải thiện chất lượng buổi học bạn nhé.`
  String get dialog__message__session_feedback_message {
    return Intl.message(
      'Bạn vừa hoàn thành một buổi học.\nHãy chia sẻ nhận xét về buổi học để chúng tôi có thể cải thiện chất lượng buổi học bạn nhé.',
      name: 'dialog__message__session_feedback_message',
      desc: '',
      args: [],
    );
  }

  /// `Phiên của bạn đã hết hạn, vui lòng đăng nhập lại`
  String get dialog__message__token_expired_message {
    return Intl.message(
      'Phiên của bạn đã hết hạn, vui lòng đăng nhập lại',
      name: 'dialog__message__token_expired_message',
      desc: '',
      args: [],
    );
  }

  /// `Phiên của bạn đã hết hạn`
  String get dialog__message__token_expired_title {
    return Intl.message(
      'Phiên của bạn đã hết hạn',
      name: 'dialog__message__token_expired_title',
      desc: '',
      args: [],
    );
  }

  /// `Chúng tôi thu thập các hành động của bạn để mang lại trải nghiệm và dịch vụ được cá nhân hóa hơn. Ví dụ, chúng tôi có thể dựa trên hành vi của bạn trong ứng dụng để phân tích lý do bạn bị kẹt, do đó cải thiện hiệu suất ứng dụng`
  String get dialog__message__tracking_message {
    return Intl.message(
      'Chúng tôi thu thập các hành động của bạn để mang lại trải nghiệm và dịch vụ được cá nhân hóa hơn. Ví dụ, chúng tôi có thể dựa trên hành vi của bạn trong ứng dụng để phân tích lý do bạn bị kẹt, do đó cải thiện hiệu suất ứng dụng',
      name: 'dialog__message__tracking_message',
      desc: '',
      args: [],
    );
  }

  /// `Gửi người dùng`
  String get dialog__message__tracking_title {
    return Intl.message(
      'Gửi người dùng',
      name: 'dialog__message__tracking_title',
      desc: '',
      args: [],
    );
  }

  /// `Lưu ý`
  String get dialog__message__warning_title {
    return Intl.message(
      'Lưu ý',
      name: 'dialog__message__warning_title',
      desc: '',
      args: [],
    );
  }

  /// `Không có`
  String get do_not_have {
    return Intl.message(
      'Không có',
      name: 'do_not_have',
      desc: '',
      args: [],
    );
  }

  /// `Không có tài khoản?`
  String get dont_have_an_account {
    return Intl.message(
      'Không có tài khoản?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Thời lượng`
  String get duration {
    return Intl.message(
      'Thời lượng',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email_or_phone_number {
    return Intl.message(
      'Email',
      name: 'email_or_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Trống`
  String get empty {
    return Intl.message(
      'Trống',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đi học quá chuyên cần chúng tôi không thể tìm thấy được buổi nghỉ nào`
  String get empty_absence_history {
    return Intl.message(
      'Bạn đi học quá chuyên cần chúng tôi không thể tìm thấy được buổi nghỉ nào',
      name: 'empty_absence_history',
      desc: '',
      args: [],
    );
  }

  /// `Không có khoá học được tìm thấy`
  String get empty_course {
    return Intl.message(
      'Không có khoá học được tìm thấy',
      name: 'empty_course',
      desc: '',
      args: [],
    );
  }

  /// `Ở đây hơi trống vắng`
  String get empty_title {
    return Intl.message(
      'Ở đây hơi trống vắng',
      name: 'empty_title',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Anh cho người lớn`
  String get english_for_adult {
    return Intl.message(
      'Tiếng Anh cho người lớn',
      name: 'english_for_adult',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng anh cho trẻ em, học sinh `
  String get english_for_chid_student {
    return Intl.message(
      'Tiếng anh cho trẻ em, học sinh ',
      name: 'english_for_chid_student',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Anh cho bé`
  String get english_for_kid {
    return Intl.message(
      'Tiếng Anh cho bé',
      name: 'english_for_kid',
      desc: '',
      args: [],
    );
  }

  /// `Mã OTP 6 chữ số đã gửi về <0> số điện thoại <1>`
  String get enter_otp_sent_via {
    return Intl.message(
      'Mã OTP 6 chữ số đã gửi về <0> số điện thoại <1>',
      name: 'enter_otp_sent_via',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mã xác minh`
  String get enter_sent_otp {
    return Intl.message(
      'Nhập mã xác minh',
      name: 'enter_sent_otp',
      desc: '',
      args: [],
    );
  }

  /// `Nhập {content}`
  String enter_value(Object content) {
    return Intl.message(
      'Nhập $content',
      name: 'enter_value',
      desc: '',
      args: [content],
    );
  }

  /// `Nhập mật khẩu mới`
  String get enter_your_new_password {
    return Intl.message(
      'Nhập mật khẩu mới',
      name: 'enter_your_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Nhập số điện thoại đã đăng ký `
  String get enter_your_registered_phone_number {
    return Intl.message(
      'Nhập số điện thoại đã đăng ký ',
      name: 'enter_your_registered_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá buổi học`
  String get evaluate_session {
    return Intl.message(
      'Đánh giá buổi học',
      name: 'evaluate_session',
      desc: '',
      args: [],
    );
  }

  /// `Tối`
  String get evening {
    return Intl.message(
      'Tối',
      name: 'evening',
      desc: '',
      args: [],
    );
  }

  /// `Khám phá`
  String get explore_page {
    return Intl.message(
      'Khám phá',
      name: 'explore_page',
      desc: '',
      args: [],
    );
  }

  /// `Gia hạn thêm`
  String get extend {
    return Intl.message(
      'Gia hạn thêm',
      name: 'extend',
      desc: '',
      args: [],
    );
  }

  /// `Gia hạn khóa học`
  String get extend_course {
    return Intl.message(
      'Gia hạn khóa học',
      name: 'extend_course',
      desc: '',
      args: [],
    );
  }

  /// `Gia hạn giờ học`
  String get extend_duration_learn {
    return Intl.message(
      'Gia hạn giờ học',
      name: 'extend_duration_learn',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 2`
  String get february {
    return Intl.message(
      'Tháng 2',
      name: 'february',
      desc: '',
      args: [],
    );
  }

  /// `Feb`
  String get february_s {
    return Intl.message(
      'Feb',
      name: 'february_s',
      desc: '',
      args: [],
    );
  }

  /// `Nhận xét`
  String get feedback__session_feedback__button_text {
    return Intl.message(
      'Nhận xét',
      name: 'feedback__session_feedback__button_text',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận đánh giá`
  String get feedback__session_feedback__header_text_confirm {
    return Intl.message(
      'Xác nhận đánh giá',
      name: 'feedback__session_feedback__header_text_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Nhận xét buổi học`
  String get feedback__session_feedback__header_text_session_feedback {
    return Intl.message(
      'Nhận xét buổi học',
      name: 'feedback__session_feedback__header_text_session_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Thái độ`
  String get feedback__session_feedback__label_attitude_text {
    return Intl.message(
      'Thái độ',
      name: 'feedback__session_feedback__label_attitude_text',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung`
  String get feedback__session_feedback__label_content_text {
    return Intl.message(
      'Nội dung',
      name: 'feedback__session_feedback__label_content_text',
      desc: '',
      args: [],
    );
  }

  /// `Mức độ hài lòng`
  String get feedback__session_feedback__label_happy_text {
    return Intl.message(
      'Mức độ hài lòng',
      name: 'feedback__session_feedback__label_happy_text',
      desc: '',
      args: [],
    );
  }

  /// `Phương pháp giảng dạy`
  String get feedback__session_feedback__label_method_text {
    return Intl.message(
      'Phương pháp giảng dạy',
      name: 'feedback__session_feedback__label_method_text',
      desc: '',
      args: [],
    );
  }

  /// `Tệ`
  String get feedback__session_feedback__rate_1 {
    return Intl.message(
      'Tệ',
      name: 'feedback__session_feedback__rate_1',
      desc: '',
      args: [],
    );
  }

  /// `Chưa hài lòng`
  String get feedback__session_feedback__rate_2 {
    return Intl.message(
      'Chưa hài lòng',
      name: 'feedback__session_feedback__rate_2',
      desc: '',
      args: [],
    );
  }

  /// `Bình thường`
  String get feedback__session_feedback__rate_3 {
    return Intl.message(
      'Bình thường',
      name: 'feedback__session_feedback__rate_3',
      desc: '',
      args: [],
    );
  }

  /// `Hài lòng`
  String get feedback__session_feedback__rate_4 {
    return Intl.message(
      'Hài lòng',
      name: 'feedback__session_feedback__rate_4',
      desc: '',
      args: [],
    );
  }

  /// `Tuyệt vời`
  String get feedback__session_feedback__rate_5 {
    return Intl.message(
      'Tuyệt vời',
      name: 'feedback__session_feedback__rate_5',
      desc: '',
      args: [],
    );
  }

  /// `Hãy chia sẽ cảm nhận về buổi học và giáo viên này bạn nhé`
  String get feedback__session_feedback__text_feedback_hint {
    return Intl.message(
      'Hãy chia sẽ cảm nhận về buổi học và giáo viên này bạn nhé',
      name: 'feedback__session_feedback__text_feedback_hint',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá hơn 20 ký tự và dưới 256 ký tự`
  String get feedback__session_feedback__text_feedback_hint_1 {
    return Intl.message(
      'Đánh giá hơn 20 ký tự và dưới 256 ký tự',
      name: 'feedback__session_feedback__text_feedback_hint_1',
      desc: '',
      args: [],
    );
  }

  /// `Vài giây trước`
  String get few_seconds_ago {
    return Intl.message(
      'Vài giây trước',
      name: 'few_seconds_ago',
      desc: '',
      args: [],
    );
  }

  /// `Lĩnh vực làm việc`
  String get field_of_work {
    return Intl.message(
      'Lĩnh vực làm việc',
      name: 'field_of_work',
      desc: '',
      args: [],
    );
  }

  /// `Tìm giáo viên yêu thích`
  String get find_favorite_teacher {
    return Intl.message(
      'Tìm giáo viên yêu thích',
      name: 'find_favorite_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Tìm giáo viên mới tại đây`
  String get find_new_teacher_here {
    return Intl.message(
      'Tìm giáo viên mới tại đây',
      name: 'find_new_teacher_here',
      desc: '',
      args: [],
    );
  }

  /// `5 kết quả gần nhất`
  String get five_recent_results {
    return Intl.message(
      '5 kết quả gần nhất',
      name: 'five_recent_results',
      desc: '',
      args: [],
    );
  }

  /// `Cố định và linh hoạt`
  String get fixed_flexible {
    return Intl.message(
      'Cố định và linh hoạt',
      name: 'fixed_flexible',
      desc: '',
      args: [],
    );
  }

  /// `Linh động`
  String get flexible {
    return Intl.message(
      'Linh động',
      name: 'flexible',
      desc: '',
      args: [],
    );
  }

  /// `Linh hoạt`
  String get flexibleV2 {
    return Intl.message(
      'Linh hoạt',
      name: 'flexibleV2',
      desc: '',
      args: [],
    );
  }

  /// `Dành cho`
  String get for_someone {
    return Intl.message(
      'Dành cho',
      name: 'for_someone',
      desc: '',
      args: [],
    );
  }

  /// `Đối với giáo viên Việt Nam`
  String get for_vietnamese_teachers {
    return Intl.message(
      'Đối với giáo viên Việt Nam',
      name: 'for_vietnamese_teachers',
      desc: '',
      args: [],
    );
  }

  /// `Nước ngoài`
  String get foreign {
    return Intl.message(
      'Nước ngoài',
      name: 'foreign',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên Quốc Tế`
  String get foreign_teacher {
    return Intl.message(
      'Giáo viên Quốc Tế',
      name: 'foreign_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Quên mật khẩu?`
  String get forgot_password {
    return Intl.message(
      'Quên mật khẩu?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Miễn phí`
  String get free {
    return Intl.message(
      'Miễn phí',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 6`
  String get fri {
    return Intl.message(
      'Thứ 6',
      name: 'fri',
      desc: '',
      args: [],
    );
  }

  /// `Thứ sáu`
  String get friday {
    return Intl.message(
      'Thứ sáu',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `T6`
  String get friday_s {
    return Intl.message(
      'T6',
      name: 'friday_s',
      desc: '',
      args: [],
    );
  }

  /// `Giới thiệu bạn bè`
  String get friend_referral {
    return Intl.message(
      'Giới thiệu bạn bè',
      name: 'friend_referral',
      desc: '',
      args: [],
    );
  }

  /// `Đầy đủ`
  String get full {
    return Intl.message(
      'Đầy đủ',
      name: 'full',
      desc: '',
      args: [],
    );
  }

  /// `Họ và tên`
  String get full_name {
    return Intl.message(
      'Họ và tên',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `Giới tính`
  String get gender {
    return Intl.message(
      'Giới tính',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Nhận ngay`
  String get get_now {
    return Intl.message(
      'Nhận ngay',
      name: 'get_now',
      desc: '',
      args: [],
    );
  }

  /// `Mục tiêu`
  String get goal {
    return Intl.message(
      'Mục tiêu',
      name: 'goal',
      desc: '',
      args: [],
    );
  }

  /// `Ngữ pháp`
  String get grammar {
    return Intl.message(
      'Ngữ pháp',
      name: 'grammar',
      desc: '',
      args: [],
    );
  }

  /// `Nhóm giáo viên`
  String get group_of_English_teachers {
    return Intl.message(
      'Nhóm giáo viên',
      name: 'group_of_English_teachers',
      desc: '',
      args: [],
    );
  }

  /// `Đang diễn ra`
  String get happening {
    return Intl.message(
      'Đang diễn ra',
      name: 'happening',
      desc: '',
      args: [],
    );
  }

  /// `Xin chào`
  String get hello {
    return Intl.message(
      'Xin chào',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Xin chào {name}`
  String hello_someone(Object name) {
    return Intl.message(
      'Xin chào $name',
      name: 'hello_someone',
      desc: '',
      args: [name],
    );
  }

  /// `Trung tâm trợ giúp`
  String get help_center {
    return Intl.message(
      'Trung tâm trợ giúp',
      name: 'help_center',
      desc: '',
      args: [],
    );
  }

  /// `Lịch sử`
  String get history {
    return Intl.message(
      'Lịch sử',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Trang chủ`
  String get home {
    return Intl.message(
      'Trang chủ',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Bài tập về nhà`
  String get home_work {
    return Intl.message(
      'Bài tập về nhà',
      name: 'home_work',
      desc: '',
      args: [],
    );
  }

  /// `Bài tập về nhà`
  String get homework {
    return Intl.message(
      'Bài tập về nhà',
      name: 'homework',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung bài tập`
  String get homework_content {
    return Intl.message(
      'Nội dung bài tập',
      name: 'homework_content',
      desc: '',
      args: [],
    );
  }

  /// `Tổng hợp bài tập về nhà`
  String get homework_summary {
    return Intl.message(
      'Tổng hợp bài tập về nhà',
      name: 'homework_summary',
      desc: '',
      args: [],
    );
  }

  /// `8:00 - 17:00 từ thứ 2 đến thứ 6\nNgoài giờ làm hành chính xin vui lòng liên hệ hotline qua Zalo`
  String get hotline_bottom_sheet_work_time {
    return Intl.message(
      '8:00 - 17:00 từ thứ 2 đến thứ 6\nNgoài giờ làm hành chính xin vui lòng liên hệ hotline qua Zalo',
      name: 'hotline_bottom_sheet_work_time',
      desc: '',
      args: [],
    );
  }

  /// `giờ`
  String get hour {
    return Intl.message(
      'giờ',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `giờ`
  String get hours {
    return Intl.message(
      'giờ',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `{hours} giờ trước`
  String hours_relative(Object hours) {
    return Intl.message(
      '$hours giờ trước',
      name: 'hours_relative',
      desc: '',
      args: [hours],
    );
  }

  /// `Tôi hiểu rồi`
  String get i_got_it {
    return Intl.message(
      'Tôi hiểu rồi',
      name: 'i_got_it',
      desc: '',
      args: [],
    );
  }

  /// `Tính năng đang được xây dựng`
  String get implementing_feature {
    return Intl.message(
      'Tính năng đang được xây dựng',
      name: 'implementing_feature',
      desc: '',
      args: [],
    );
  }

  /// `Chúng tôi đang xây dựng tính năng này`
  String get implementing_feature_detail {
    return Intl.message(
      'Chúng tôi đang xây dựng tính năng này',
      name: 'implementing_feature_detail',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin`
  String get infomation {
    return Intl.message(
      'Thông tin',
      name: 'infomation',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin & Hỗ trợ`
  String get information_support {
    return Intl.message(
      'Thông tin & Hỗ trợ',
      name: 'information_support',
      desc: '',
      args: [],
    );
  }

  /// `Mất kết nối internet`
  String get internet_connection_lost {
    return Intl.message(
      'Mất kết nối internet',
      name: 'internet_connection_lost',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 1`
  String get january {
    return Intl.message(
      'Tháng 1',
      name: 'january',
      desc: '',
      args: [],
    );
  }

  /// `Jan`
  String get january_s {
    return Intl.message(
      'Jan',
      name: 'january_s',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Nhật`
  String get japanese {
    return Intl.message(
      'Tiếng Nhật',
      name: 'japanese',
      desc: '',
      args: [],
    );
  }

  /// `Tham gia`
  String get join {
    return Intl.message(
      'Tham gia',
      name: 'join',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 7`
  String get july {
    return Intl.message(
      'Tháng 7',
      name: 'july',
      desc: '',
      args: [],
    );
  }

  /// `Jul`
  String get july_s {
    return Intl.message(
      'Jul',
      name: 'july_s',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 6`
  String get june {
    return Intl.message(
      'Tháng 6',
      name: 'june',
      desc: '',
      args: [],
    );
  }

  /// `Jun`
  String get june_s {
    return Intl.message(
      'Jun',
      name: 'june_s',
      desc: '',
      args: [],
    );
  }

  /// `Ngôn ngữ`
  String get language {
    return Intl.message(
      'Ngôn ngữ',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá mới nhất`
  String get lastest_reviews {
    return Intl.message(
      'Đánh giá mới nhất',
      name: 'lastest_reviews',
      desc: '',
      args: [],
    );
  }

  /// `Khuya`
  String get late_night {
    return Intl.message(
      'Khuya',
      name: 'late_night',
      desc: '',
      args: [],
    );
  }

  /// `Để sau`
  String get later {
    return Intl.message(
      'Để sau',
      name: 'later',
      desc: '',
      args: [],
    );
  }

  /// `Học`
  String get learn {
    return Intl.message(
      'Học',
      name: 'learn',
      desc: '',
      args: [],
    );
  }

  /// `Học tiếng Anh 1 kèm 1`
  String get learn_english_online_1_on_1 {
    return Intl.message(
      'Học tiếng Anh 1 kèm 1',
      name: 'learn_english_online_1_on_1',
      desc: '',
      args: [],
    );
  }

  /// `Lịch Sử Báo Nghỉ`
  String get learning__feature_label__absence_history {
    return Intl.message(
      'Lịch Sử Báo Nghỉ',
      name: 'learning__feature_label__absence_history',
      desc: '',
      args: [],
    );
  }

  /// `Chứng Chỉ`
  String get learning__feature_label__certificates {
    return Intl.message(
      'Chứng Chỉ',
      name: 'learning__feature_label__certificates',
      desc: '',
      args: [],
    );
  }

  /// `Xác Nhận`
  String get learning__feature_label__confirm {
    return Intl.message(
      'Xác Nhận',
      name: 'learning__feature_label__confirm',
      desc: '',
      args: [],
    );
  }

  /// `Lịch Sử Phạt`
  String get learning__feature_label__penalty_history {
    return Intl.message(
      'Lịch Sử Phạt',
      name: 'learning__feature_label__penalty_history',
      desc: '',
      args: [],
    );
  }

  /// `Kết Quả`
  String get learning__feature_label__results {
    return Intl.message(
      'Kết Quả',
      name: 'learning__feature_label__results',
      desc: '',
      args: [],
    );
  }

  /// `Video Buổi Học`
  String get learning__feature_label__videos {
    return Intl.message(
      'Video Buổi Học',
      name: 'learning__feature_label__videos',
      desc: '',
      args: [],
    );
  }

  /// `Học Tập`
  String get learning__header_text__learning {
    return Intl.message(
      'Học Tập',
      name: 'learning__header_text__learning',
      desc: '',
      args: [],
    );
  }

  /// `Có thể bạn quan tâm`
  String get learning__label_text__maybe_you_interest {
    return Intl.message(
      'Có thể bạn quan tâm',
      name: 'learning__label_text__maybe_you_interest',
      desc: '',
      args: [],
    );
  }

  /// `Chủ đề học`
  String get learning_topic {
    return Intl.message(
      'Chủ đề học',
      name: 'learning_topic',
      desc: '',
      args: [],
    );
  }

  /// `Đã học`
  String get learnt {
    return Intl.message(
      'Đã học',
      name: 'learnt',
      desc: '',
      args: [],
    );
  }

  /// `Bài học`
  String get lession {
    return Intl.message(
      'Bài học',
      name: 'lession',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung chủ đề`
  String get lesson {
    return Intl.message(
      'Nội dung chủ đề',
      name: 'lesson',
      desc: '',
      args: [],
    );
  }

  /// `Hay để Antoree giúp bạn nào`
  String get let_antoree_help_you {
    return Intl.message(
      'Hay để Antoree giúp bạn nào',
      name: 'let_antoree_help_you',
      desc: '',
      args: [],
    );
  }

  /// `Bắt đầu`
  String get let_go {
    return Intl.message(
      'Bắt đầu',
      name: 'let_go',
      desc: '',
      args: [],
    );
  }

  /// `Giao diện sáng`
  String get lightTheme {
    return Intl.message(
      'Giao diện sáng',
      name: 'lightTheme',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách videos`
  String get list_videos {
    return Intl.message(
      'Danh sách videos',
      name: 'list_videos',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get log_out {
    return Intl.message(
      'Đăng xuất',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có muốn đăng xuất khỏi thiết bị này?`
  String get log_out_confirmation {
    return Intl.message(
      'Bạn có muốn đăng xuất khỏi thiết bị này?',
      name: 'log_out_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get login {
    return Intl.message(
      'Đăng nhập',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi đăng nhập`
  String get login__error_message {
    return Intl.message(
      'Lỗi đăng nhập',
      name: 'login__error_message',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập thất bại`
  String get login_failed {
    return Intl.message(
      'Đăng nhập thất bại',
      name: 'login_failed',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập để tiếp tục`
  String get login_to_continue {
    return Intl.message(
      'Đăng nhập để tiếp tục',
      name: 'login_to_continue',
      desc: '',
      args: [],
    );
  }

  /// `Khoá chính`
  String get main_course {
    return Intl.message(
      'Khoá chính',
      name: 'main_course',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên <0> đã chấp nhận buổi học bù, buổi học sẽ diễn ra vào lúc <1>, <2>`
  String get makeup_confirm_notification {
    return Intl.message(
      'Giáo viên <0> đã chấp nhận buổi học bù, buổi học sẽ diễn ra vào lúc <1>, <2>',
      name: 'makeup_confirm_notification',
      desc: '',
      args: [],
    );
  }

  /// `<0> đã xin nghỉ buổi học <1> và có mong muốn đổi lịch. Bấm vào đây để chọn lịch học bù`
  String get makeup_notification {
    return Intl.message(
      '<0> đã xin nghỉ buổi học <1> và có mong muốn đổi lịch. Bấm vào đây để chọn lịch học bù',
      name: 'makeup_notification',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên <0> đã KHÔNG chọn được lịch nào phù hợp với yêu cầu học bù của bạn`
  String get makeup_reject_notification {
    return Intl.message(
      'Giáo viên <0> đã KHÔNG chọn được lịch nào phù hợp với yêu cầu học bù của bạn',
      name: 'makeup_reject_notification',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên <0> đã xin nghỉ buổi học <1> và có mong muốn đổi lịch. Bấm vào đây để chọn lịch học.`
  String get makeup_submitted_notification {
    return Intl.message(
      'Giáo viên <0> đã xin nghỉ buổi học <1> và có mong muốn đổi lịch. Bấm vào đây để chọn lịch học.',
      name: 'makeup_submitted_notification',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 3`
  String get march {
    return Intl.message(
      'Tháng 3',
      name: 'march',
      desc: '',
      args: [],
    );
  }

  /// `Mar`
  String get march_s {
    return Intl.message(
      'Mar',
      name: 'march_s',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 5`
  String get may {
    return Intl.message(
      'Tháng 5',
      name: 'may',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get may_s {
    return Intl.message(
      'May',
      name: 'may_s',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin tài khoản`
  String get menu__button_label__account_info {
    return Intl.message(
      'Thông tin tài khoản',
      name: 'menu__button_label__account_info',
      desc: '',
      args: [],
    );
  }

  /// `Giấy chứng nhận`
  String get menu__button_label__certificates {
    return Intl.message(
      'Giấy chứng nhận',
      name: 'menu__button_label__certificates',
      desc: '',
      args: [],
    );
  }

  /// `Đổi mật khẩu`
  String get menu__button_label__change_password {
    return Intl.message(
      'Đổi mật khẩu',
      name: 'menu__button_label__change_password',
      desc: '',
      args: [],
    );
  }

  /// `Hợp đồng`
  String get menu__button_label__contracts {
    return Intl.message(
      'Hợp đồng',
      name: 'menu__button_label__contracts',
      desc: '',
      args: [],
    );
  }

  /// `Chính sách khóa học`
  String get menu__button_label__course_policy {
    return Intl.message(
      'Chính sách khóa học',
      name: 'menu__button_label__course_policy',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin cá nhân`
  String get menu__button_label__personal_information {
    return Intl.message(
      'Thông tin cá nhân',
      name: 'menu__button_label__personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Quy định lớp học`
  String get menu__button_label__session_policy {
    return Intl.message(
      'Quy định lớp học',
      name: 'menu__button_label__session_policy',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get menu__button_text__logout {
    return Intl.message(
      'Đăng xuất',
      name: 'menu__button_text__logout',
      desc: '',
      args: [],
    );
  }

  /// `Hồ sơ của bạn`
  String get menu__header_text__your_profile {
    return Intl.message(
      'Hồ sơ của bạn',
      name: 'menu__header_text__your_profile',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản`
  String get menu__label_text__account {
    return Intl.message(
      'Tài khoản',
      name: 'menu__label_text__account',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin và hỗ trợ`
  String get menu__label_text__information_support {
    return Intl.message(
      'Thông tin và hỗ trợ',
      name: 'menu__label_text__information_support',
      desc: '',
      args: [],
    );
  }

  /// `Tin nhắn`
  String get message {
    return Intl.message(
      'Tin nhắn',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Nhắn tin CSKH`
  String get message_customer_care {
    return Intl.message(
      'Nhắn tin CSKH',
      name: 'message_customer_care',
      desc: '',
      args: [],
    );
  }

  /// `phút`
  String get minute {
    return Intl.message(
      'phút',
      name: 'minute',
      desc: '',
      args: [],
    );
  }

  /// `phút`
  String get minutes {
    return Intl.message(
      'phút',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `{minutes} phút trước`
  String minutes_relative(Object minutes) {
    return Intl.message(
      '$minutes phút trước',
      name: 'minutes_relative',
      desc: '',
      args: [minutes],
    );
  }

  /// `Thứ 2`
  String get mon {
    return Intl.message(
      'Thứ 2',
      name: 'mon',
      desc: '',
      args: [],
    );
  }

  /// `Thứ hai`
  String get monday {
    return Intl.message(
      'Thứ hai',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `T2`
  String get monday_s {
    return Intl.message(
      'T2',
      name: 'monday_s',
      desc: '',
      args: [],
    );
  }

  /// `tháng`
  String get month {
    return Intl.message(
      'tháng',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `tháng`
  String get months {
    return Intl.message(
      'tháng',
      name: 'months',
      desc: '',
      args: [],
    );
  }

  /// `Thêm`
  String get more {
    return Intl.message(
      'Thêm',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Sáng`
  String get morning {
    return Intl.message(
      'Sáng',
      name: 'morning',
      desc: '',
      args: [],
    );
  }

  /// `Tên`
  String get name {
    return Intl.message(
      'Tên',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Quốc tịch`
  String get nationality {
    return Intl.message(
      'Quốc tịch',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu mới`
  String get new_password {
    return Intl.message(
      'Mật khẩu mới',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Mới`
  String get new_s {
    return Intl.message(
      'Mới',
      name: 'new_s',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp tục`
  String get next {
    return Intl.message(
      'Tiếp tục',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Buổi tiếp theo`
  String get next_session {
    return Intl.message(
      'Buổi tiếp theo',
      name: 'next_session',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học tiếp theo`
  String get next_sessionV2 {
    return Intl.message(
      'Buổi học tiếp theo',
      name: 'next_sessionV2',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học sẽ bắt đầu sau `
  String get next_session_in {
    return Intl.message(
      'Buổi học sẽ bắt đầu sau ',
      name: 'next_session_in',
      desc: '',
      args: [],
    );
  }

  /// `Tối`
  String get night {
    return Intl.message(
      'Tối',
      name: 'night',
      desc: '',
      args: [],
    );
  }

  /// `Không`
  String get no {
    return Intl.message(
      'Không',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Không tìm thấy giáo viên`
  String get no_available_teacher {
    return Intl.message(
      'Không tìm thấy giáo viên',
      name: 'no_available_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Không có giáo viên rãnh vào thời gian bạn đã chọn. Xin hãy chọn giờ khác`
  String get no_available_teacher_prompt {
    return Intl.message(
      'Không có giáo viên rãnh vào thời gian bạn đã chọn. Xin hãy chọn giờ khác',
      name: 'no_available_teacher_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Không xác nhận`
  String get no_confirm {
    return Intl.message(
      'Không xác nhận',
      name: 'no_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Không có khóa học`
  String get no_course {
    return Intl.message(
      'Không có khóa học',
      name: 'no_course',
      desc: '',
      args: [],
    );
  }

  /// `Chưa có mục tiêu`
  String get no_goal_yet {
    return Intl.message(
      'Chưa có mục tiêu',
      name: 'no_goal_yet',
      desc: '',
      args: [],
    );
  }

  /// `Chưa có thông tin`
  String get no_information {
    return Intl.message(
      'Chưa có thông tin',
      name: 'no_information',
      desc: '',
      args: [],
    );
  }

  /// `Không có thông báo`
  String get no_notification {
    return Intl.message(
      'Không có thông báo',
      name: 'no_notification',
      desc: '',
      args: [],
    );
  }

  /// `Hiện chưa có đánh giá định kì`
  String get no_review_from_teacher {
    return Intl.message(
      'Hiện chưa có đánh giá định kì',
      name: 'no_review_from_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Không có buổi học`
  String get no_session {
    return Intl.message(
      'Không có buổi học',
      name: 'no_session',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học không được xác nhận`
  String get not_confirmed_unit {
    return Intl.message(
      'Buổi học không được xác nhận',
      name: 'not_confirmed_unit',
      desc: '',
      args: [],
    );
  }

  /// `Chúng tôi không thể tìm thấy gì ở đây cả`
  String get not_found {
    return Intl.message(
      'Chúng tôi không thể tìm thấy gì ở đây cả',
      name: 'not_found',
      desc: '',
      args: [],
    );
  }

  /// `Không diễn ra`
  String get not_happened {
    return Intl.message(
      'Không diễn ra',
      name: 'not_happened',
      desc: '',
      args: [],
    );
  }

  /// `Ghi chú cho học viên`
  String get note_for_student {
    return Intl.message(
      'Ghi chú cho học viên',
      name: 'note_for_student',
      desc: '',
      args: [],
    );
  }

  /// `Ghi chú`
  String get notes {
    return Intl.message(
      'Ghi chú',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Thông báo`
  String get notification {
    return Intl.message(
      'Thông báo',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Chúc mừng khoá học {courseId} của bạn đã được cộng thêm 1 giờ`
  String notification__bonus_unit_title(Object courseId) {
    return Intl.message(
      'Chúc mừng khoá học $courseId của bạn đã được cộng thêm 1 giờ',
      name: 'notification__bonus_unit_title',
      desc: '',
      args: [courseId],
    );
  }

  /// `Hiện tại không có thông báo nào`
  String get notification__error_notification_empty {
    return Intl.message(
      'Hiện tại không có thông báo nào',
      name: 'notification__error_notification_empty',
      desc: '',
      args: [],
    );
  }

  /// `Tất cả`
  String get notification__filter_text__all {
    return Intl.message(
      'Tất cả',
      name: 'notification__filter_text__all',
      desc: '',
      args: [],
    );
  }

  /// `Chưa đọc`
  String get notification__filter_text__unread {
    return Intl.message(
      'Chưa đọc',
      name: 'notification__filter_text__unread',
      desc: '',
      args: [],
    );
  }

  /// `Thông báo`
  String get notification__header_text__notifications {
    return Intl.message(
      'Thông báo',
      name: 'notification__header_text__notifications',
      desc: '',
      args: [],
    );
  }

  /// `Hãy chuẩn bị sẵn sàng, buổi học của bạn sẽ diễn ra sau 15 phút nữa`
  String get notification__remind_class__15 {
    return Intl.message(
      'Hãy chuẩn bị sẵn sàng, buổi học của bạn sẽ diễn ra sau 15 phút nữa',
      name: 'notification__remind_class__15',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học sắp tới của bạn sẽ đươc diễn ra vào lúc {startAt}`
  String notification__remind_class__4(Object startAt) {
    return Intl.message(
      'Buổi học sắp tới của bạn sẽ đươc diễn ra vào lúc $startAt',
      name: 'notification__remind_class__4',
      desc: '',
      args: [startAt],
    );
  }

  /// `Diễn ra`
  String get notification__session_start_at {
    return Intl.message(
      'Diễn ra',
      name: 'notification__session_start_at',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 10`
  String get october {
    return Intl.message(
      'Tháng 10',
      name: 'october',
      desc: '',
      args: [],
    );
  }

  /// `Oct`
  String get october_s {
    return Intl.message(
      'Oct',
      name: 'october_s',
      desc: '',
      args: [],
    );
  }

  /// `Đồng ý`
  String get ok {
    return Intl.message(
      'Đồng ý',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu cũ`
  String get old_password {
    return Intl.message(
      'Mật khẩu cũ',
      name: 'old_password',
      desc: '',
      args: [],
    );
  }

  /// `Hoạt động`
  String get open {
    return Intl.message(
      'Hoạt động',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Đang mở`
  String get opening {
    return Intl.message(
      'Đang mở',
      name: 'opening',
      desc: '',
      args: [],
    );
  }

  /// `Tuỳ chọn`
  String get optional {
    return Intl.message(
      'Tuỳ chọn',
      name: 'optional',
      desc: '',
      args: [],
    );
  }

  /// `hoặc`
  String get or {
    return Intl.message(
      'hoặc',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Thời lượng gốc`
  String get origin_duration {
    return Intl.message(
      'Thời lượng gốc',
      name: 'origin_duration',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi khác`
  String get other_error {
    return Intl.message(
      'Lỗi khác',
      name: 'other_error',
      desc: '',
      args: [],
    );
  }

  /// `Lý do khác`
  String get other_reason {
    return Intl.message(
      'Lý do khác',
      name: 'other_reason',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa nhận được mã OTP?`
  String get otp_not_send {
    return Intl.message(
      'Bạn chưa nhận được mã OTP?',
      name: 'otp_not_send',
      desc: '',
      args: [],
    );
  }

  /// `Gửi lại`
  String get otp_page_button_resend {
    return Intl.message(
      'Gửi lại',
      name: 'otp_page_button_resend',
      desc: '',
      args: [],
    );
  }

  /// `Gửi đến SMS`
  String get otp_page_button_send_to_sms {
    return Intl.message(
      'Gửi đến SMS',
      name: 'otp_page_button_send_to_sms',
      desc: '',
      args: [],
    );
  }

  /// `Tổng quan`
  String get overview {
    return Intl.message(
      'Tổng quan',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Số trang`
  String get page {
    return Intl.message(
      'Số trang',
      name: 'page',
      desc: '',
      args: [],
    );
  }

  /// `Số giờ được tặng đã học`
  String get passed_bonus_duration {
    return Intl.message(
      'Số giờ được tặng đã học',
      name: 'passed_bonus_duration',
      desc: '',
      args: [],
    );
  }

  /// `Thời lượng đã học`
  String get passed_duration {
    return Intl.message(
      'Thời lượng đã học',
      name: 'passed_duration',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu`
  String get password {
    return Intl.message(
      'Mật khẩu',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu không trùng`
  String get passwordsAreNotMatch {
    return Intl.message(
      'Mật khẩu không trùng',
      name: 'passwordsAreNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết phạt`
  String get penalty__dialog_details_title {
    return Intl.message(
      'Chi tiết phạt',
      name: 'penalty__dialog_details_title',
      desc: '',
      args: [],
    );
  }

  /// `Gỡ phạt thành công`
  String get penalty__dialog_remove_success {
    return Intl.message(
      'Gỡ phạt thành công',
      name: 'penalty__dialog_remove_success',
      desc: '',
      args: [],
    );
  }

  /// `Không có lịch sử phạt nào`
  String get penalty__error_text__empty {
    return Intl.message(
      'Không có lịch sử phạt nào',
      name: 'penalty__error_text__empty',
      desc: '',
      args: [],
    );
  }

  /// `Lịch Sử Phạt`
  String get penalty__header_text__penalty_history {
    return Intl.message(
      'Lịch Sử Phạt',
      name: 'penalty__header_text__penalty_history',
      desc: '',
      args: [],
    );
  }

  /// `- Tiền phạt của Giáo Viên {teacherName} đã được tự động cộng vào thời lượng của khóa học {courseId}.\n- Bạn có thể gỡ phạt cho Giáo Viên bằng cách nhấn nút "Gỡ phạt" và Antoree sẽ thu hồi thời lượng đã được cộng trước đó.`
  String penalty__penalty_detail__note(Object teacherName, Object courseId) {
    return Intl.message(
      '- Tiền phạt của Giáo Viên $teacherName đã được tự động cộng vào thời lượng của khóa học $courseId.\n- Bạn có thể gỡ phạt cho Giáo Viên bằng cách nhấn nút "Gỡ phạt" và Antoree sẽ thu hồi thời lượng đã được cộng trước đó.',
      name: 'penalty__penalty_detail__note',
      desc: '',
      args: [teacherName, courseId],
    );
  }

  /// `Gỡ phạt`
  String get penalty__penalty_detail__remove_penalty {
    return Intl.message(
      'Gỡ phạt',
      name: 'penalty__penalty_detail__remove_penalty',
      desc: '',
      args: [],
    );
  }

  /// `Bạn sẽ bị thu hồi số thời lượng khóa học đã được cộng vào trước đó!\nBạn có chắc muốn gỡ phạt cho Giáo Viên này không?`
  String get penalty__penalty_detail__remove_penalty_confirm_message {
    return Intl.message(
      'Bạn sẽ bị thu hồi số thời lượng khóa học đã được cộng vào trước đó!\nBạn có chắc muốn gỡ phạt cho Giáo Viên này không?',
      name: 'penalty__penalty_detail__remove_penalty_confirm_message',
      desc: '',
      args: [],
    );
  }

  /// `Trì hoãn`
  String get pending {
    return Intl.message(
      'Trì hoãn',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `{person} báo nghỉ lúc {absentAt}`
  String person_absence_at(Object person, Object absentAt) {
    return Intl.message(
      '$person báo nghỉ lúc $absentAt',
      name: 'person_absence_at',
      desc: '',
      args: [person, absentAt],
    );
  }

  /// `Thông tin cá nhân`
  String get personal_infomation {
    return Intl.message(
      'Thông tin cá nhân',
      name: 'personal_infomation',
      desc: '',
      args: [],
    );
  }

  /// `Nhu cầu cá nhân`
  String get personal_preference {
    return Intl.message(
      'Nhu cầu cá nhân',
      name: 'personal_preference',
      desc: '',
      args: [],
    );
  }

  /// `Mục tiêu cá nhân`
  String get personals_goal {
    return Intl.message(
      'Mục tiêu cá nhân',
      name: 'personals_goal',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại`
  String get phone_number {
    return Intl.message(
      'Số điện thoại',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `chọn`
  String get pick {
    return Intl.message(
      'chọn',
      name: 'pick',
      desc: '',
      args: [],
    );
  }

  /// `Đã chọn`
  String get picked {
    return Intl.message(
      'Đã chọn',
      name: 'picked',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập {content}`
  String please_enter(Object content) {
    return Intl.message(
      'Vui lòng nhập $content',
      name: 'please_enter',
      desc: '',
      args: [content],
    );
  }

  /// `Vui lòng nhập số điện thoại đã đăng ký`
  String get please_enter_signed_phone_number {
    return Intl.message(
      'Vui lòng nhập số điện thoại đã đăng ký',
      name: 'please_enter_signed_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Hồ sơ`
  String get profile {
    return Intl.message(
      'Hồ sơ',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Hồ sơ của tôi`
  String get profile__header_text__my_profile {
    return Intl.message(
      'Hồ sơ của tôi',
      name: 'profile__header_text__my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Ưu đãi đổi quà`
  String get promo_gift {
    return Intl.message(
      'Ưu đãi đổi quà',
      name: 'promo_gift',
      desc: '',
      args: [],
    );
  }

  /// `Tham gia ngay`
  String get quick_join {
    return Intl.message(
      'Tham gia ngay',
      name: 'quick_join',
      desc: '',
      args: [],
    );
  }

  /// `Lý do`
  String get reason {
    return Intl.message(
      'Lý do',
      name: 'reason',
      desc: '',
      args: [],
    );
  }

  /// `Nhận`
  String get receive {
    return Intl.message(
      'Nhận',
      name: 'receive',
      desc: '',
      args: [],
    );
  }

  /// `Mã giới thiệu`
  String get referral {
    return Intl.message(
      'Mã giới thiệu',
      name: 'referral',
      desc: '',
      args: [],
    );
  }

  /// `Từ chối xác nhận`
  String get refuse_confirm {
    return Intl.message(
      'Từ chối xác nhận',
      name: 'refuse_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Vùng miền`
  String get regions {
    return Intl.message(
      'Vùng miền',
      name: 'regions',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký`
  String get register {
    return Intl.message(
      'Đăng ký',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `thời lượng đăng ký`
  String get register_duration {
    return Intl.message(
      'thời lượng đăng ký',
      name: 'register_duration',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký khoá mới`
  String get register_new_course {
    return Intl.message(
      'Đăng ký khoá mới',
      name: 'register_new_course',
      desc: '',
      args: [],
    );
  }

  /// `Từ chối`
  String get reject {
    return Intl.message(
      'Từ chối',
      name: 'reject',
      desc: '',
      args: [],
    );
  }

  /// `Đã`
  String get rejected {
    return Intl.message(
      'Đã',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `{days} ngày tiếp theo`
  String relative_days_next(Object days) {
    return Intl.message(
      '$days ngày tiếp theo',
      name: 'relative_days_next',
      desc: '',
      args: [days],
    );
  }

  /// `{hours} giờ tiếp theo`
  String relative_hours_next(Object hours) {
    return Intl.message(
      '$hours giờ tiếp theo',
      name: 'relative_hours_next',
      desc: '',
      args: [hours],
    );
  }

  /// `{minutes} phút tiếp theo`
  String relative_minutes_next(Object minutes) {
    return Intl.message(
      '$minutes phút tiếp theo',
      name: 'relative_minutes_next',
      desc: '',
      args: [minutes],
    );
  }

  /// `Số giờ còn lại`
  String get remain_hours {
    return Intl.message(
      'Số giờ còn lại',
      name: 'remain_hours',
      desc: '',
      args: [],
    );
  }

  /// `Số giờ còn lại sau khi xác nhận`
  String get remain_hours_after_confirm {
    return Intl.message(
      'Số giờ còn lại sau khi xác nhận',
      name: 'remain_hours_after_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Thời lượng còn lại`
  String get remaining_duration {
    return Intl.message(
      'Thời lượng còn lại',
      name: 'remaining_duration',
      desc: '',
      args: [],
    );
  }

  /// `Khóa học của bạn sẽ được mở lại lúc <0>`
  String get reminder_open_course_absence_at {
    return Intl.message(
      'Khóa học của bạn sẽ được mở lại lúc <0>',
      name: 'reminder_open_course_absence_at',
      desc: '',
      args: [],
    );
  }

  /// `Bỏ đã chọn`
  String get remove_seleted {
    return Intl.message(
      'Bỏ đã chọn',
      name: 'remove_seleted',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu`
  String get request {
    return Intl.message(
      'Yêu cầu',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu bị hủy sớm`
  String get request_cancelled_prematurely {
    return Intl.message(
      'Yêu cầu bị hủy sớm',
      name: 'request_cancelled_prematurely',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu xác nhận buổi học`
  String get request_confirm_session {
    return Intl.message(
      'Yêu cầu xác nhận buổi học',
      name: 'request_confirm_session',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu bị thất bại, vui lòng thử lại sau ít phút`
  String get request_failed {
    return Intl.message(
      'Yêu cầu bị thất bại, vui lòng thử lại sau ít phút',
      name: 'request_failed',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu gia hạn`
  String get request_for_extension {
    return Intl.message(
      'Yêu cầu gia hạn',
      name: 'request_for_extension',
      desc: '',
      args: [],
    );
  }

  /// `Không bỏ trống`
  String get required {
    return Intl.message(
      'Không bỏ trống',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Gửi lại mã sau `
  String get resend_otp_after {
    return Intl.message(
      'Gửi lại mã sau ',
      name: 'resend_otp_after',
      desc: '',
      args: [],
    );
  }

  /// `Đặt lại mật khẩu`
  String get reset_account_password {
    return Intl.message(
      'Đặt lại mật khẩu',
      name: 'reset_account_password',
      desc: '',
      args: [],
    );
  }

  /// `Kết quả`
  String get result {
    return Intl.message(
      'Kết quả',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa có đánh giá định kỳ nào`
  String get results__error__emtpy_evaluate_result {
    return Intl.message(
      'Bạn chưa có đánh giá định kỳ nào',
      name: 'results__error__emtpy_evaluate_result',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa có kết quả kiểm tra nào`
  String get results__error__emtpy_test_result {
    return Intl.message(
      'Bạn chưa có kết quả kiểm tra nào',
      name: 'results__error__emtpy_test_result',
      desc: '',
      args: [],
    );
  }

  /// `Kết quả`
  String get results__header_text__results {
    return Intl.message(
      'Kết quả',
      name: 'results__header_text__results',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá định kỳ`
  String get results__tab_name__evaluate {
    return Intl.message(
      'Đánh giá định kỳ',
      name: 'results__tab_name__evaluate',
      desc: '',
      args: [],
    );
  }

  /// `Test định kỳ`
  String get results__tab_name__test {
    return Intl.message(
      'Test định kỳ',
      name: 'results__tab_name__test',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá vào`
  String get results__text_info__evaluate_at {
    return Intl.message(
      'Đánh giá vào',
      name: 'results__text_info__evaluate_at',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra vào`
  String get results__text_info__test_at {
    return Intl.message(
      'Kiểm tra vào',
      name: 'results__text_info__test_at',
      desc: '',
      args: [],
    );
  }

  /// `Cấp độ`
  String get results__text_info__test_level {
    return Intl.message(
      'Cấp độ',
      name: 'results__text_info__test_level',
      desc: '',
      args: [],
    );
  }

  /// `Thử lại`
  String get retry {
    return Intl.message(
      'Thử lại',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Nhận xét`
  String get review {
    return Intl.message(
      'Nhận xét',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Lộ trình`
  String get roadmap {
    return Intl.message(
      'Lộ trình',
      name: 'roadmap',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 7`
  String get sat {
    return Intl.message(
      'Thứ 7',
      name: 'sat',
      desc: '',
      args: [],
    );
  }

  /// `Thứ bảy`
  String get saturday {
    return Intl.message(
      'Thứ bảy',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `T7`
  String get saturday_s {
    return Intl.message(
      'T7',
      name: 'saturday_s',
      desc: '',
      args: [],
    );
  }

  /// `Lưu`
  String get save {
    return Intl.message(
      'Lưu',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Lịch học`
  String get schedule {
    return Intl.message(
      'Lịch học',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `Hiện tại bạn không có buổi học nào đã hoàn thành`
  String get schedule__error__no_happened_session {
    return Intl.message(
      'Hiện tại bạn không có buổi học nào đã hoàn thành',
      name: 'schedule__error__no_happened_session',
      desc: '',
      args: [],
    );
  }

  /// `Hiện tại bạn không có lịch học sắp diễn ra`
  String get schedule__error__no_up_comming_session {
    return Intl.message(
      'Hiện tại bạn không có lịch học sắp diễn ra',
      name: 'schedule__error__no_up_comming_session',
      desc: '',
      args: [],
    );
  }

  /// `Hoàn thành`
  String get schedule__header_text__happened {
    return Intl.message(
      'Hoàn thành',
      name: 'schedule__header_text__happened',
      desc: '',
      args: [],
    );
  }

  /// `Lịch học`
  String get schedule__header_text__schedule {
    return Intl.message(
      'Lịch học',
      name: 'schedule__header_text__schedule',
      desc: '',
      args: [],
    );
  }

  /// `Sắp diễn ra`
  String get schedule__header_text__up_comming {
    return Intl.message(
      'Sắp diễn ra',
      name: 'schedule__header_text__up_comming',
      desc: '',
      args: [],
    );
  }

  /// `Báo nghỉ`
  String get schedule__schedule_item_button_text__absence {
    return Intl.message(
      'Báo nghỉ',
      name: 'schedule__schedule_item_button_text__absence',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học dự kiến`
  String get scheduled_session {
    return Intl.message(
      'Buổi học dự kiến',
      name: 'scheduled_session',
      desc: '',
      args: [],
    );
  }

  /// `Điểm`
  String get score {
    return Intl.message(
      'Điểm',
      name: 'score',
      desc: '',
      args: [],
    );
  }

  /// `Tìm kiếm`
  String get search {
    return Intl.message(
      'Tìm kiếm',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Xem thêm`
  String get see_more {
    return Intl.message(
      'Xem thêm',
      name: 'see_more',
      desc: '',
      args: [],
    );
  }

  /// `Chọn tất cả`
  String get select_all {
    return Intl.message(
      'Chọn tất cả',
      name: 'select_all',
      desc: '',
      args: [],
    );
  }

  /// `Đã chọn`
  String get selected {
    return Intl.message(
      'Đã chọn',
      name: 'selected',
      desc: '',
      args: [],
    );
  }

  /// `Gửi`
  String get send {
    return Intl.message(
      'Gửi',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Gửi phản hồi`
  String get send_feedback {
    return Intl.message(
      'Gửi phản hồi',
      name: 'send_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Gửi đi`
  String get send_it {
    return Intl.message(
      'Gửi đi',
      name: 'send_it',
      desc: '',
      args: [],
    );
  }

  /// `Gửi thông báo`
  String get send_notify {
    return Intl.message(
      'Gửi thông báo',
      name: 'send_notify',
      desc: '',
      args: [],
    );
  }

  /// `<0> đã gửi yêu cầu xác nhận buổi học lúc <1>`
  String get sent_a_request_to_confirm_the_session_at {
    return Intl.message(
      '<0> đã gửi yêu cầu xác nhận buổi học lúc <1>',
      name: 'sent_a_request_to_confirm_the_session_at',
      desc: '',
      args: [],
    );
  }

  /// `Tháng 9`
  String get september {
    return Intl.message(
      'Tháng 9',
      name: 'september',
      desc: '',
      args: [],
    );
  }

  /// `Sep`
  String get september_s {
    return Intl.message(
      'Sep',
      name: 'september_s',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi máy chủ`
  String get serrver_error {
    return Intl.message(
      'Lỗi máy chủ',
      name: 'serrver_error',
      desc: '',
      args: [],
    );
  }

  /// `Phản hồi dịch vụ`
  String get service_feedback {
    return Intl.message(
      'Phản hồi dịch vụ',
      name: 'service_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học`
  String get session {
    return Intl.message(
      'Buổi học',
      name: 'session',
      desc: '',
      args: [],
    );
  }

  /// `Báo nghỉ buổi học`
  String get session_absence {
    return Intl.message(
      'Báo nghỉ buổi học',
      name: 'session_absence',
      desc: '',
      args: [],
    );
  }

  /// `Báo nghỉ buổi học`
  String get session_absence_notice {
    return Intl.message(
      'Báo nghỉ buổi học',
      name: 'session_absence_notice',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung buổi học`
  String get session_content {
    return Intl.message(
      'Nội dung buổi học',
      name: 'session_content',
      desc: '',
      args: [],
    );
  }

  /// `Không tìm thấy buổi học`
  String get session_not_found {
    return Intl.message(
      'Không tìm thấy buổi học',
      name: 'session_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Mức độ hài lòng của bạn`
  String get session_rating {
    return Intl.message(
      'Mức độ hài lòng của bạn',
      name: 'session_rating',
      desc: '',
      args: [],
    );
  }

  /// `Buổi`
  String get session_short {
    return Intl.message(
      'Buổi',
      name: 'session_short',
      desc: '',
      args: [],
    );
  }

  /// `Video buổi học`
  String get session_video {
    return Intl.message(
      'Video buổi học',
      name: 'session_video',
      desc: '',
      args: [],
    );
  }

  /// `Ngôn ngữ`
  String get setting_page_label_language {
    return Intl.message(
      'Ngôn ngữ',
      name: 'setting_page_label_language',
      desc: '',
      args: [],
    );
  }

  /// `Cài đặt`
  String get setting_page_title_app_bar {
    return Intl.message(
      'Cài đặt',
      name: 'setting_page_title_app_bar',
      desc: '',
      args: [],
    );
  }

  /// `Chế độ tối`
  String get settting_page_label_dark_mode {
    return Intl.message(
      'Chế độ tối',
      name: 'settting_page_label_dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Hiển thị`
  String get show {
    return Intl.message(
      'Hiển thị',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get sign_in {
    return Intl.message(
      'Đăng nhập',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get sign_out {
    return Intl.message(
      'Đăng xuất',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký`
  String get sign_up {
    return Intl.message(
      'Đăng ký',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Sắp xếp bằng`
  String get sort_by {
    return Intl.message(
      'Sắp xếp bằng',
      name: 'sort_by',
      desc: '',
      args: [],
    );
  }

  /// `Lan tỏa Antoree`
  String get spread_antoree {
    return Intl.message(
      'Lan tỏa Antoree',
      name: 'spread_antoree',
      desc: '',
      args: [],
    );
  }

  /// `Học tập`
  String get study {
    return Intl.message(
      'Học tập',
      name: 'study',
      desc: '',
      args: [],
    );
  }

  /// `Nộp bài tập về nhà`
  String get submit_home_work {
    return Intl.message(
      'Nộp bài tập về nhà',
      name: 'submit_home_work',
      desc: '',
      args: [],
    );
  }

  /// `Nộp bài tập`
  String get submit_home_work_short {
    return Intl.message(
      'Nộp bài tập',
      name: 'submit_home_work_short',
      desc: '',
      args: [],
    );
  }

  /// `<0> đã nộp đơn xin nghỉ phép buổi học diễn ra lúc <1>`
  String get submitted_a_leave_absence_at {
    return Intl.message(
      '<0> đã nộp đơn xin nghỉ phép buổi học diễn ra lúc <1>',
      name: 'submitted_a_leave_absence_at',
      desc: '',
      args: [],
    );
  }

  /// `CN`
  String get sun {
    return Intl.message(
      'CN',
      name: 'sun',
      desc: '',
      args: [],
    );
  }

  /// `Chủ Nhật`
  String get sunday {
    return Intl.message(
      'Chủ Nhật',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `CN`
  String get sunday_s {
    return Intl.message(
      'CN',
      name: 'sunday_s',
      desc: '',
      args: [],
    );
  }

  /// `Hỗ trợ`
  String get support {
    return Intl.message(
      'Hỗ trợ',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Diễn ra vào lúc`
  String get take_place_on {
    return Intl.message(
      'Diễn ra vào lúc',
      name: 'take_place_on',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên`
  String get teacher {
    return Intl.message(
      'Giáo viên',
      name: 'teacher',
      desc: '',
      args: [],
    );
  }

  /// `Thái độ giáo viên`
  String get teacher_attitude {
    return Intl.message(
      'Thái độ giáo viên',
      name: 'teacher_attitude',
      desc: '',
      args: [],
    );
  }

  /// `Tên giáo viên`
  String get teacher_name {
    return Intl.message(
      'Tên giáo viên',
      name: 'teacher_name',
      desc: '',
      args: [],
    );
  }

  /// `Phương pháp giảng dạy`
  String get teaching_method {
    return Intl.message(
      'Phương pháp giảng dạy',
      name: 'teaching_method',
      desc: '',
      args: [],
    );
  }

  /// `Điều khoản dịch vụ`
  String get terms_of_service {
    return Intl.message(
      'Điều khoản dịch vụ',
      name: 'terms_of_service',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra`
  String get test {
    return Intl.message(
      'Kiểm tra',
      name: 'test',
      desc: '',
      args: [],
    );
  }

  /// `Kết quả kiểm tra`
  String get test_result {
    return Intl.message(
      'Kết quả kiểm tra',
      name: 'test_result',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 5`
  String get thu {
    return Intl.message(
      'Thứ 5',
      name: 'thu',
      desc: '',
      args: [],
    );
  }

  /// `Thứ năm`
  String get thursday {
    return Intl.message(
      'Thứ năm',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `T5`
  String get thursday_s {
    return Intl.message(
      'T5',
      name: 'thursday_s',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian`
  String get times {
    return Intl.message(
      'Thời gian',
      name: 'times',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp tục`
  String get to_continue {
    return Intl.message(
      'Tiếp tục',
      name: 'to_continue',
      desc: '',
      args: [],
    );
  }

  /// `Thanh toán`
  String get to_pay {
    return Intl.message(
      'Thanh toán',
      name: 'to_pay',
      desc: '',
      args: [],
    );
  }

  /// `Hôm nay`
  String get today {
    return Intl.message(
      'Hôm nay',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Khóa học hôm nay`
  String get today_course {
    return Intl.message(
      'Khóa học hôm nay',
      name: 'today_course',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học hôm nay`
  String get today_session {
    return Intl.message(
      'Buổi học hôm nay',
      name: 'today_session',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học hôm nay`
  String get today_sessions {
    return Intl.message(
      'Buổi học hôm nay',
      name: 'today_sessions',
      desc: '',
      args: [],
    );
  }

  /// `Ngày mai`
  String get tomorrow {
    return Intl.message(
      'Ngày mai',
      name: 'tomorrow',
      desc: '',
      args: [],
    );
  }

  /// `Giáo viên được yêu thích`
  String get top_favorite_teachers {
    return Intl.message(
      'Giáo viên được yêu thích',
      name: 'top_favorite_teachers',
      desc: '',
      args: [],
    );
  }

  /// `Chủ đề`
  String get topic {
    return Intl.message(
      'Chủ đề',
      name: 'topic',
      desc: '',
      args: [],
    );
  }

  /// `Tổng thời lượng`
  String get total_duration {
    return Intl.message(
      'Tổng thời lượng',
      name: 'total_duration',
      desc: '',
      args: [],
    );
  }

  /// `Tổng điểm`
  String get total_score {
    return Intl.message(
      'Tổng điểm',
      name: 'total_score',
      desc: '',
      args: [],
    );
  }

  /// `Chuyển đổi`
  String get transfer {
    return Intl.message(
      'Chuyển đổi',
      name: 'transfer',
      desc: '',
      args: [],
    );
  }

  /// `Học thử`
  String get trial {
    return Intl.message(
      'Học thử',
      name: 'trial',
      desc: '',
      args: [],
    );
  }

  /// `Hãy thử lại sau`
  String get try_again {
    return Intl.message(
      'Hãy thử lại sau',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 3`
  String get tue {
    return Intl.message(
      'Thứ 3',
      name: 'tue',
      desc: '',
      args: [],
    );
  }

  /// `Thứ ba`
  String get tuesday {
    return Intl.message(
      'Thứ ba',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `T3`
  String get tuesday_s {
    return Intl.message(
      'T3',
      name: 'tuesday_s',
      desc: '',
      args: [],
    );
  }

  /// `Mức học phí`
  String get tuition_levels {
    return Intl.message(
      'Mức học phí',
      name: 'tuition_levels',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học chưa xác nhận`
  String get unconfirmed_unit {
    return Intl.message(
      'Buổi học chưa xác nhận',
      name: 'unconfirmed_unit',
      desc: '',
      args: [],
    );
  }

  /// `Chủ đề`
  String get unit {
    return Intl.message(
      'Chủ đề',
      name: 'unit',
      desc: '',
      args: [],
    );
  }

  /// `Buổi học đã được báo nghỉ`
  String get unit__unit_detail_status_absence {
    return Intl.message(
      'Buổi học đã được báo nghỉ',
      name: 'unit__unit_detail_status_absence',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết buổi học`
  String get unit_detail {
    return Intl.message(
      'Chi tiết buổi học',
      name: 'unit_detail',
      desc: '',
      args: [],
    );
  }

  /// `Chủ đề buổi học`
  String get unit_topic {
    return Intl.message(
      'Chủ đề buổi học',
      name: 'unit_topic',
      desc: '',
      args: [],
    );
  }

  /// `Hoàn\nthành`
  String get units__filter_button_text_happened {
    return Intl.message(
      'Hoàn\nthành',
      name: 'units__filter_button_text_happened',
      desc: '',
      args: [],
    );
  }

  /// `Buổi\nchưa học`
  String get units__filter_button_text_new {
    return Intl.message(
      'Buổi\nchưa học',
      name: 'units__filter_button_text_new',
      desc: '',
      args: [],
    );
  }

  /// `Không\ndiễn ra`
  String get units__filter_button_text_not_happened {
    return Intl.message(
      'Không\ndiễn ra',
      name: 'units__filter_button_text_not_happened',
      desc: '',
      args: [],
    );
  }

  /// `Chờ\nxác nhận`
  String get units__filter_button_text_waiting {
    return Intl.message(
      'Chờ\nxác nhận',
      name: 'units__filter_button_text_waiting',
      desc: '',
      args: [],
    );
  }

  /// `Hoàn thành`
  String get units__filter_text_happened {
    return Intl.message(
      'Hoàn thành',
      name: 'units__filter_text_happened',
      desc: '',
      args: [],
    );
  }

  /// `Buổi chưa học`
  String get units__filter_text_new {
    return Intl.message(
      'Buổi chưa học',
      name: 'units__filter_text_new',
      desc: '',
      args: [],
    );
  }

  /// `Không diễn ra`
  String get units__filter_text_not_happened {
    return Intl.message(
      'Không diễn ra',
      name: 'units__filter_text_not_happened',
      desc: '',
      args: [],
    );
  }

  /// `Chờ xác nhận`
  String get units__filter_text_waiting {
    return Intl.message(
      'Chờ xác nhận',
      name: 'units__filter_text_waiting',
      desc: '',
      args: [],
    );
  }

  /// `Không xác định`
  String get unknown {
    return Intl.message(
      'Không xác định',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi không xác định`
  String get unknown_error {
    return Intl.message(
      'Lỗi không xác định',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật`
  String get update {
    return Intl.message(
      'Cập nhật',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Đã cập nhật`
  String get updated {
    return Intl.message(
      'Đã cập nhật',
      name: 'updated',
      desc: '',
      args: [],
    );
  }

  /// `Đang cập nhật`
  String get updating {
    return Intl.message(
      'Đang cập nhật',
      name: 'updating',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận mã OTP`
  String get verify_otp_code {
    return Intl.message(
      'Xác nhận mã OTP',
      name: 'verify_otp_code',
      desc: '',
      args: [],
    );
  }

  /// `Xem tất cả giáo viên`
  String get view_all_teacher {
    return Intl.message(
      'Xem tất cả giáo viên',
      name: 'view_all_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Xem lịch sử`
  String get view_history {
    return Intl.message(
      'Xem lịch sử',
      name: 'view_history',
      desc: '',
      args: [],
    );
  }

  /// `Từ vựng`
  String get vocabulary {
    return Intl.message(
      'Từ vựng',
      name: 'vocabulary',
      desc: '',
      args: [],
    );
  }

  /// `Chất giọng`
  String get voice {
    return Intl.message(
      'Chất giọng',
      name: 'voice',
      desc: '',
      args: [],
    );
  }

  /// `Chờ xác nhận`
  String get waiting_confirm {
    return Intl.message(
      'Chờ xác nhận',
      name: 'waiting_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 4`
  String get wed {
    return Intl.message(
      'Thứ 4',
      name: 'wed',
      desc: '',
      args: [],
    );
  }

  /// `Thứ tư`
  String get wednesday {
    return Intl.message(
      'Thứ tư',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `T4`
  String get wednesday_s {
    return Intl.message(
      'T4',
      name: 'wednesday_s',
      desc: '',
      args: [],
    );
  }

  /// `Email/Số điện thoại hoặc mật khẩu không đúng!`
  String get wrong_username_password {
    return Intl.message(
      'Email/Số điện thoại hoặc mật khẩu không đúng!',
      name: 'wrong_username_password',
      desc: '',
      args: [],
    );
  }

  /// `năm`
  String get year {
    return Intl.message(
      'năm',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `năm`
  String get years {
    return Intl.message(
      'năm',
      name: 'years',
      desc: '',
      args: [],
    );
  }

  /// `Có`
  String get yes {
    return Intl.message(
      'Có',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đã học được`
  String get you_have_learnt {
    return Intl.message(
      'Bạn đã học được',
      name: 'you_have_learnt',
      desc: '',
      args: [],
    );
  }

  /// `Bạn không có khoá học nào`
  String get you_have_no_course {
    return Intl.message(
      'Bạn không có khoá học nào',
      name: 'you_have_no_course',
      desc: '',
      args: [],
    );
  }

  /// `Nhập ghi chú của bạn`
  String get you_to_take_notes {
    return Intl.message(
      'Nhập ghi chú của bạn',
      name: 'you_to_take_notes',
      desc: '',
      args: [],
    );
  }

  /// `Phản hồi của bạn`
  String get your_feedback {
    return Intl.message(
      'Phản hồi của bạn',
      name: 'your_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Mục tiêu của bạn`
  String get your_goal {
    return Intl.message(
      'Mục tiêu của bạn',
      name: 'your_goal',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
