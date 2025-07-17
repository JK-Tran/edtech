// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'vi';

  static String m0(courseType, hour, dateMonth) =>
      "Báo nghỉ ${courseType} lúc ${hour} ngày ${dateMonth}";

  static String m1(time) => "Lý do được xác nhận vào ${time}";

  static String m2(userType) =>
      "Giúp ${userType} và bộ phận hỗ trợ nắm thông tin.";

  static String m3(errorCode) => "Lỗi không xác định (${errorCode})";

  static String m4(message, number) =>
      "Vui lòng nhập ${message} ít nhất ${number} ký tự";

  static String m5(days) => "${days} ngày trước";

  static String m6(selectedItem) =>
      "${selectedItem} đã xoá sẽ không thể khôi phục bạn có chắc muốn xoá?";

  static String m7(courseId) => "Chi tiết của khoá học #${courseId}";

  static String m8(content) => "Nhập ${content}";

  static String m9(name) => "Xin chào ${name}";

  static String m10(hours) => "${hours} giờ trước";

  static String m11(minutes) => "${minutes} phút trước";

  static String m12(courseId) =>
      "Chúc mừng khoá học ${courseId} của bạn đã được cộng thêm 1 giờ";

  static String m13(startAt) =>
      "Buổi học sắp tới của bạn sẽ đươc diễn ra vào lúc ${startAt}";

  static String m14(teacherName, courseId) =>
      "- Tiền phạt của Giáo Viên ${teacherName} đã được tự động cộng vào thời lượng của khóa học ${courseId}.\n- Bạn có thể gỡ phạt cho Giáo Viên bằng cách nhấn nút \"Gỡ phạt\" và Antoree sẽ thu hồi thời lượng đã được cộng trước đó.";

  static String m15(person, absentAt) => "${person} báo nghỉ lúc ${absentAt}";

  static String m16(content) => "Vui lòng nhập ${content}";

  static String m17(days) => "${days} ngày tiếp theo";

  static String m18(hours) => "${hours} giờ tiếp theo";

  static String m19(minutes) => "${minutes} phút tiếp theo";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_this_teacher":
            MessageLookupByLibrary.simpleMessage("Về giáo viên này"),
        "absence__absence_details__absence_reason":
            MessageLookupByLibrary.simpleMessage("Lý do nghỉ"),
        "absence__absence_details__absence_time":
            MessageLookupByLibrary.simpleMessage("Thời gian nghỉ"),
        "absence__absence_details__header_text__absence_detail":
            MessageLookupByLibrary.simpleMessage("Chi tiết báo nghỉ"),
        "absence__absence_details__label_text__absence_request":
            MessageLookupByLibrary.simpleMessage("Yêu cầu báo nghỉ"),
        "absence__absence_details__label_text_notice":
            MessageLookupByLibrary.simpleMessage(
                "Quý học viên vui lòng lưu ý thời gian nghỉ để sắp xếp thời gian hợp lý nhé"),
        "absence__absence_details__status_canceled":
            MessageLookupByLibrary.simpleMessage("Đã hủy"),
        "absence__absence_details__status_success":
            MessageLookupByLibrary.simpleMessage("Thành công"),
        "absence__absence_details_by_cs": MessageLookupByLibrary.simpleMessage(
            "CSKH hỗ trợ học viên báo nghỉ"),
        "absence__absence_details_by_student":
            MessageLookupByLibrary.simpleMessage("Học viên báo nghỉ"),
        "absence__absence_details_by_teacher":
            MessageLookupByLibrary.simpleMessage("Giáo viên báo nghỉ"),
        "absence__absence_details_by_teacher_for_student":
            MessageLookupByLibrary.simpleMessage("Giáo viên báo nghỉ hộ"),
        "absence__absence_details_created_at":
            MessageLookupByLibrary.simpleMessage("Được tạo vào"),
        "absence__absence_session__absence_reason_text":
            MessageLookupByLibrary.simpleMessage("Lý do xin nghỉ"),
        "absence__absence_session__absence_reason_text_hint":
            MessageLookupByLibrary.simpleMessage("Nhập chi tiết lý do"),
        "absence__absence_session__absence_reason_text_warning":
            MessageLookupByLibrary.simpleMessage(
                "Vui lòng nhập lý do báo nghỉ"),
        "absence__absence_session__absence_reason_text_warning_1":
            MessageLookupByLibrary.simpleMessage(
                "Vui lòng nhập lý do báo nghỉ trên 10 ký tự"),
        "absence__absence_session__label_select_absence_date_base_on_the_teacher_schedule":
            MessageLookupByLibrary.simpleMessage(
                "Chọn ngày nghỉ theo lịch giáo viên"),
        "absence__absence_session__label_text_absence":
            MessageLookupByLibrary.simpleMessage("Bạn đang báo nghỉ buổi học"),
        "absence_absence_session__label_text_choose_day":
            MessageLookupByLibrary.simpleMessage("Chọn ngày"),
        "absence_absence_session__label_text_edit_time":
            MessageLookupByLibrary.simpleMessage("Sửa"),
        "absence_absence_session__label_text_make_up_class_time":
            MessageLookupByLibrary.simpleMessage("Thời gian học bù"),
        "absence_absence_session__label_text_makeup_date_confirm_by_teacher":
            MessageLookupByLibrary.simpleMessage("Giáo viên xác nhận học bù"),
        "absence_absence_session__label_text_no_available_time":
            MessageLookupByLibrary.simpleMessage(
                "Không có giờ trống trong ngày này"),
        "absence_absence_session__label_text_pick_make_up_class_date":
            MessageLookupByLibrary.simpleMessage("Chọn ngày học bù nào"),
        "absence_absence_session__label_text_selecte_time":
            MessageLookupByLibrary.simpleMessage("Chọn thời gian"),
        "absence_absence_session__label_text_selected_make_up_class_time":
            MessageLookupByLibrary.simpleMessage("Thời gian đã chọn"),
        "absence_absence_session__label_text_text_missed_a_class":
            MessageLookupByLibrary.simpleMessage(
                "Bỏ lỡ một buổi học? Không sao, mình lên lịch học bù liền nha"),
        "absence_at": m0,
        "absence_confirmed_at": m1,
        "absence_course":
            MessageLookupByLibrary.simpleMessage("Báo nghỉ khóa học"),
        "absence_fail":
            MessageLookupByLibrary.simpleMessage("Báo nghỉ không thành công"),
        "absence_history__header_text__absence_history":
            MessageLookupByLibrary.simpleMessage("Lịch sử báo nghỉ"),
        "absence_history__label_text__absence_session":
            MessageLookupByLibrary.simpleMessage("Buổi học báo nghỉ"),
        "absence_history__label_text_cancel_absence_request":
            MessageLookupByLibrary.simpleMessage(
                "Để hủy yêu cầu báo nghỉ vui lòng liên hệ"),
        "absence_infomation": m2,
        "absence_notice": MessageLookupByLibrary.simpleMessage("Báo nghỉ"),
        "absence_policy__header_text_policy_1_on_1":
            MessageLookupByLibrary.simpleMessage("Quy định lớp học 1 kèm 1"),
        "absence_policy__label_text_for_student_content":
            MessageLookupByLibrary.simpleMessage(
                "- Học viên báo nghỉ trước khi giờ học diễn ra, buổi học được bảo lưu và không tính phí.\n- Học viên báo nghỉ sau khi giờ học bắt đầu, giáo viên được ghi nhận 50% thời lượng buổi học.\n- Học viên không báo nghỉ, nếu giáo viên chờ suốt buổi học thì giáo viên có quyền xác nhận tính phí buổi học đó hoặc giáo viên có thể báo nghỉ hộ học viên và buổi học sẽ không bị tính phí."),
        "absence_policy__label_text_for_student_title":
            MessageLookupByLibrary.simpleMessage("Với học viên"),
        "absence_policy__label_text_for_teacher_content":
            MessageLookupByLibrary.simpleMessage(
                "- Giáo viên báo nghỉ trước khi giờ học diễn ra, buổi học được bảo lưu và không tính phí.\n- Giáo viên không báo nghỉ, tới giờ học học viên chờ quá 5 phút mà giáo viên chưa có mặt, giáo viên sẽ bị phạt 1 buổi học tương ứng và buổi học này được cộng trực tiếp vào khóa học của học viên"),
        "absence_policy__label_text_for_teacher_title":
            MessageLookupByLibrary.simpleMessage(
                "Với giáo viên sẽ được áp dụng tương tự"),
        "absence_policy__label_text_notice": MessageLookupByLibrary.simpleMessage(
            "Lưu ý: Học viên có thể gỡ phạt cho giáo viên bằng ứng dụng quản lý lớp học và Antoree sẽ thu hồi lại buổi học đã tặng cho học viên."),
        "absence_policy__label_text_should": MessageLookupByLibrary.simpleMessage(
            "Học viên không nên nghỉ quá 2 buổi/tháng để đảm bảo hiệu quả khóa học"),
        "absence_rule":
            MessageLookupByLibrary.simpleMessage("Quy định báo nghỉ"),
        "absence_unsuccessfully": MessageLookupByLibrary.simpleMessage(
            "Báo nghỉ không thành công! Vui lòng kiểm tra lại thời gian báo nghỉ và thử lại."),
        "absent_notification_cancel": MessageLookupByLibrary.simpleMessage(
            "Xin chào <0>, Yêu cầu báo nghỉ buổi học <1> đã được HỦY thành công"),
        "achieved_roadmap":
            MessageLookupByLibrary.simpleMessage("Lộ trình đã đạt"),
        "achievement": MessageLookupByLibrary.simpleMessage("Thành tựu"),
        "address": MessageLookupByLibrary.simpleMessage("Địa chỉ"),
        "all_courses": MessageLookupByLibrary.simpleMessage("Tất cả khoá học"),
        "all_sessions": MessageLookupByLibrary.simpleMessage("Tất cả buổi học"),
        "all_teacher": MessageLookupByLibrary.simpleMessage("Tất cả giáo viên"),
        "app_name": MessageLookupByLibrary.simpleMessage("Antoree"),
        "appearance": MessageLookupByLibrary.simpleMessage("Giao diện"),
        "attendance_rate":
            MessageLookupByLibrary.simpleMessage("Tỉ lệ chuyên cần"),
        "available_courses":
            MessageLookupByLibrary.simpleMessage("Khóa học hiện có"),
        "available_slot": MessageLookupByLibrary.simpleMessage("Có thể chọn"),
        "available_time": MessageLookupByLibrary.simpleMessage("Lịch rảnh"),
        "begin": MessageLookupByLibrary.simpleMessage("Bắt đầu"),
        "birthday": MessageLookupByLibrary.simpleMessage("Ngày sinh"),
        "bonus_duration":
            MessageLookupByLibrary.simpleMessage("Thời lượng được tặng"),
        "book_name": MessageLookupByLibrary.simpleMessage("Tên sách"),
        "book_schedule": MessageLookupByLibrary.simpleMessage("Chọn lịch"),
        "cancel_a_leave_absence_at": MessageLookupByLibrary.simpleMessage(
            "Đơn xin nghỉ của <0> đã bị hủy!"),
        "cancel_request": MessageLookupByLibrary.simpleMessage("Hủy yêu cầu"),
        "cancel_schedule": MessageLookupByLibrary.simpleMessage("Huỷ lịch"),
        "cancel_selected": MessageLookupByLibrary.simpleMessage("Bỏ chọn"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Đã huỷ"),
        "cant_find": MessageLookupByLibrary.simpleMessage(
            "Tìm hoài, tìm mãi vẫn chẳng thấy gì !"),
        "carer": MessageLookupByLibrary.simpleMessage("Người hỗ trợ"),
        "certificate__details__completed_date":
            MessageLookupByLibrary.simpleMessage("Hoàn thành lúc"),
        "certificate__error_text__certificates_empty":
            MessageLookupByLibrary.simpleMessage(
                "Úi! Bạn chưa hoàn thành khóa học nào. Hãy tiếp tục học thật chăm chỉ nhé!"),
        "certificate__header_text__certificates":
            MessageLookupByLibrary.simpleMessage("Giấy chứng nhận"),
        "change_calendar": MessageLookupByLibrary.simpleMessage("Đổi lịch"),
        "change_password__button_text__change_password":
            MessageLookupByLibrary.simpleMessage("Đổi mật khẩu"),
        "change_password__header_text_change_password":
            MessageLookupByLibrary.simpleMessage("Đổi mật khẩu"),
        "change_password__label_text__current_password":
            MessageLookupByLibrary.simpleMessage("Nhập mật khẩu hiện tại"),
        "change_password__label_text__new_password":
            MessageLookupByLibrary.simpleMessage("Nhập mật khẩu mới"),
        "change_password_successfully": MessageLookupByLibrary.simpleMessage(
            "Thay đổi mật khẩu thành công"),
        "change_study_calendar":
            MessageLookupByLibrary.simpleMessage("Thay đổi lịch học"),
        "change_teacher": MessageLookupByLibrary.simpleMessage("Đổi giáo viên"),
        "change_topic": MessageLookupByLibrary.simpleMessage("Đổi chủ đề"),
        "child": MessageLookupByLibrary.simpleMessage("Trẻ em"),
        "choose_another_date":
            MessageLookupByLibrary.simpleMessage("Xin hãy chọn ngày khác"),
        "choose_course": MessageLookupByLibrary.simpleMessage("Chọn khóa học"),
        "choose_date": MessageLookupByLibrary.simpleMessage("Chọn ngày"),
        "choose_field_of_work":
            MessageLookupByLibrary.simpleMessage("Chọn lĩnh vực"),
        "choose_gender":
            MessageLookupByLibrary.simpleMessage("Hãy chọn giới tính"),
        "choose_nationality":
            MessageLookupByLibrary.simpleMessage("Chon quốc tịch"),
        "choose_session": MessageLookupByLibrary.simpleMessage("Chọn buổi học"),
        "choose_study_program":
            MessageLookupByLibrary.simpleMessage("Hãy chọn chương trình học"),
        "choose_suitable_price":
            MessageLookupByLibrary.simpleMessage("Chọn mức học phí tham gia"),
        "choose_teacher":
            MessageLookupByLibrary.simpleMessage("Chọn giáo viên"),
        "choose_time": MessageLookupByLibrary.simpleMessage("Chọn thời gian"),
        "choose_user": MessageLookupByLibrary.simpleMessage("Chọn người dùng"),
        "closed": MessageLookupByLibrary.simpleMessage("Đã đóng"),
        "closing": MessageLookupByLibrary.simpleMessage("Đang đóng"),
        "coming_soon": MessageLookupByLibrary.simpleMessage("Sắp ra mắt"),
        "common___error__timeout_exception":
            MessageLookupByLibrary.simpleMessage("Quá thời gian xử lý yêu cầu"),
        "common__action__accept":
            MessageLookupByLibrary.simpleMessage("Chấp nhận"),
        "common__action__add": MessageLookupByLibrary.simpleMessage("Thêm"),
        "common__action__apply":
            MessageLookupByLibrary.simpleMessage("Áp dụng"),
        "common__action__back":
            MessageLookupByLibrary.simpleMessage("Quay lại"),
        "common__action__back_to_home":
            MessageLookupByLibrary.simpleMessage("Về trang chủ"),
        "common__action__call_phone_number":
            MessageLookupByLibrary.simpleMessage("Gọi"),
        "common__action__cancel":
            MessageLookupByLibrary.simpleMessage("Hủy bỏ"),
        "common__action__cancel_s": MessageLookupByLibrary.simpleMessage("Huỷ"),
        "common__action__close": MessageLookupByLibrary.simpleMessage("Đóng"),
        "common__action__collapse":
            MessageLookupByLibrary.simpleMessage("Thu gọn"),
        "common__action__confirm":
            MessageLookupByLibrary.simpleMessage("Xác nhận"),
        "common__action__delete": MessageLookupByLibrary.simpleMessage("Xóa"),
        "common__action__dismiss":
            MessageLookupByLibrary.simpleMessage("Bỏ qua"),
        "common__action__done": MessageLookupByLibrary.simpleMessage("Xong"),
        "common__action__download": MessageLookupByLibrary.simpleMessage("Tải"),
        "common__action__hide": MessageLookupByLibrary.simpleMessage("Ẩn"),
        "common__action__later": MessageLookupByLibrary.simpleMessage("Để sau"),
        "common__action__report":
            MessageLookupByLibrary.simpleMessage("Báo cáo"),
        "common__action__skip": MessageLookupByLibrary.simpleMessage("Bỏ qua"),
        "common__action__view": MessageLookupByLibrary.simpleMessage("Xem"),
        "common__action__view_detail":
            MessageLookupByLibrary.simpleMessage("Xem chi tiết"),
        "common__action__view_more":
            MessageLookupByLibrary.simpleMessage("Xem thêm"),
        "common__age": MessageLookupByLibrary.simpleMessage("Tuổi"),
        "common__all": MessageLookupByLibrary.simpleMessage("Tất cả"),
        "common__app_info__name":
            MessageLookupByLibrary.simpleMessage("Tên ứng dụng"),
        "common__app_info__version":
            MessageLookupByLibrary.simpleMessage("Phiên bản ứng dụng"),
        "common__detail": MessageLookupByLibrary.simpleMessage("Chi tiết"),
        "common__erorr__invalid_format_or_value":
            MessageLookupByLibrary.simpleMessage(
                "Lỗi định dạng hoặc giá trị không đúng"),
        "common__erorr__invalid_information":
            MessageLookupByLibrary.simpleMessage("Thông tin không hợp lệ"),
        "common__erorr__validation_new_password":
            MessageLookupByLibrary.simpleMessage("Mật khẩu mới không hợp lệ!"),
        "common__erorr__validation_password":
            MessageLookupByLibrary.simpleMessage("Mật khẩu không hợp lệ!"),
        "common__erorr__validation_phone_number":
            MessageLookupByLibrary.simpleMessage("Số điện thoại không hợp lệ"),
        "common__error___validation_date_time":
            MessageLookupByLibrary.simpleMessage(
                "Ngày và giờ không hợp lệ"),
        "common__error__bad_certificate":
            MessageLookupByLibrary.simpleMessage("Lỗi chứng chỉ không hợp lệ"),
        "common__error__can_not_connect_to_host":
            MessageLookupByLibrary.simpleMessage(
                "Không thể kết nết đến server"),
        "common__error__can_not_open":
            MessageLookupByLibrary.simpleMessage("Không mở được"),
        "common__error__cancellation_exception":
            MessageLookupByLibrary.simpleMessage("Lỗi hành động bị hủy bỏ"),
        "common__error__fixing": MessageLookupByLibrary.simpleMessage(
            "Có lỗi xảy ra, chúng tôi đang khắc phục"),
        "common__error__no_internet_connectivity":
            MessageLookupByLibrary.simpleMessage("Không có kết nối internet"),
        "common__error__no_internet_exception":
            MessageLookupByLibrary.simpleMessage("Không có kết nối mạng"),
        "common__error__parse_exception": MessageLookupByLibrary.simpleMessage(
            "Giá trị dữ liệu không hợp lệ"),
        "common__error__something_wrong": MessageLookupByLibrary.simpleMessage(
            "Có lỗi xảy ra, xin hãy thử lại sau!"),
        "common__error__token_expired":
            MessageLookupByLibrary.simpleMessage("Token hết hạn"),
        "common__error__unknown_exception": m3,
        "common__error__validation_email_or_phone_number":
            MessageLookupByLibrary.simpleMessage(
                "Email hoặc số điện thoại không hợp lệ"),
        "common__error__validation_otp_code":
            MessageLookupByLibrary.simpleMessage(
                "Mã xác thực không hợp lệ"),
        "common__error__validtion__confirm_passord_empty":
            MessageLookupByLibrary.simpleMessage(
                "Mật khẩu xác nhận không được để trống"),
        "common__error__validtion__confirm_passord_miss_match":
            MessageLookupByLibrary.simpleMessage(
                "Mật khẩu xác nhận không trùng"),
        "common__error__validtion_empty_email":
            MessageLookupByLibrary.simpleMessage("Email không được để trống"),
        "common__error__validtion_required_field":
            MessageLookupByLibrary.simpleMessage(
                "Thông tin này không được để trống"),
        "common__learning": MessageLookupByLibrary.simpleMessage("Học tập"),
        "common__message__empty":
            MessageLookupByLibrary.simpleMessage("(Trống)"),
        "common__month__april": MessageLookupByLibrary.simpleMessage("Tháng 4"),
        "common__month__april_s": MessageLookupByLibrary.simpleMessage("Apr"),
        "common__month__august":
            MessageLookupByLibrary.simpleMessage("Tháng 8"),
        "common__month__august_s": MessageLookupByLibrary.simpleMessage("Aug"),
        "common__month__november":
            MessageLookupByLibrary.simpleMessage("Tháng 11"),
        "common__month__november_s":
            MessageLookupByLibrary.simpleMessage("Nov"),
        "common__now": MessageLookupByLibrary.simpleMessage("Bây giờ"),
        "common__present": MessageLookupByLibrary.simpleMessage("Bây giờ"),
        "common__required_field": MessageLookupByLibrary.simpleMessage(
            "Thông tin này không được để trống"),
        "common__schedule__afternoon":
            MessageLookupByLibrary.simpleMessage("Chiều"),
        "common__settings": MessageLookupByLibrary.simpleMessage("Cài đặt"),
        "common__text_hint__no_content":
            MessageLookupByLibrary.simpleMessage("(Chưa cập nhật nội dung)"),
        "common__text_hint__no_title":
            MessageLookupByLibrary.simpleMessage("(Chưa cập nhật tiêu đề)"),
        "common__warning_text_required_minium_characters": m4,
        "common_error": MessageLookupByLibrary.simpleMessage("Lỗi"),
        "common_error_enter_pasword":
            MessageLookupByLibrary.simpleMessage("Vui lòng nhập mật khẩu"),
        "common_error_enter_pasword_minLength":
            MessageLookupByLibrary.simpleMessage(
                "Vui lòng nhập mật khẩu trên 8 ký tự"),
        "common_error_enter_pasword_simple":
            MessageLookupByLibrary.simpleMessage("Mật khẩu không được dễ đoán"),
        "common_goal":
            MessageLookupByLibrary.simpleMessage("Mục tiêu thường gặp"),
        "common_password_pattern": MessageLookupByLibrary.simpleMessage(
            "Mật khẩu phải có ít nhất 8 kí tự (bao gồm số, chữ in hoa, chữ thường và ký hiệu)"),
        "common_url_cant_launched": MessageLookupByLibrary.simpleMessage(
            "Không thể mở đường dẫn do không hợp lệ."),
        "compare_the_results":
            MessageLookupByLibrary.simpleMessage("So sánh kết quả"),
        "complete": MessageLookupByLibrary.simpleMessage("Hoàn thành"),
        "completed": MessageLookupByLibrary.simpleMessage("Đã hoàn thành"),
        "completed_roadmap":
            MessageLookupByLibrary.simpleMessage("Lộ trình hoàn thành"),
        "confirm__confirm_details__header_text__confirm_detail":
            MessageLookupByLibrary.simpleMessage("Chi tiết xác nhận"),
        "confirm__confirm_details__label_info__teacher_join_at":
            MessageLookupByLibrary.simpleMessage("Giáo viên vào lớp lúc"),
        "confirm__confirm_details__label_info__teacher_leave_at":
            MessageLookupByLibrary.simpleMessage("Giáo viên rời lớp lúc"),
        "confirm__confirm_details__label_text_check_again":
            MessageLookupByLibrary.simpleMessage(
                "Quý học viên vui lòng kiểm tra thông tin và xác nhận giúp <0> nếu thông tin chính xác nhé"),
        "confirm__confirm_details__label_text_confirm_request":
            MessageLookupByLibrary.simpleMessage("Yêu cầu xác nhận buổi học"),
        "confirm__confirm_details__status_text__auto_confirmed":
            MessageLookupByLibrary.simpleMessage(
                "Buổi học này đã được tự động xác nhận"),
        "confirm__confirm_details__status_text__confirmed":
            MessageLookupByLibrary.simpleMessage(
                "Buổi học này đã được xác nhận"),
        "confirm__confirm_details__status_text__no_confirmed":
            MessageLookupByLibrary.simpleMessage(
                "Buổi học này đã không được xác nhận"),
        "confirm__dialog_issue__confirm_duration_text":
            MessageLookupByLibrary.simpleMessage("Thời lượng đã dạy (phút)"),
        "confirm__dialog_issue__confirm_duration_text_greater":
            MessageLookupByLibrary.simpleMessage(
                "Thời lượng phải lớn hơn 1 phút"),
        "confirm__dialog_issue__confirm_duration_text_less":
            MessageLookupByLibrary.simpleMessage(
                "Thời lượng phải nhỏ hơn thời lượng buổi học"),
        "confirm__dialog_issue__label_text":
            MessageLookupByLibrary.simpleMessage("Chuyện gì đã xảy ra?"),
        "confirm__dialog_issue__text_option_1":
            MessageLookupByLibrary.simpleMessage("Giáo viên vắng/không dạy"),
        "confirm__dialog_issue__text_option_2":
            MessageLookupByLibrary.simpleMessage("Dạy thiếu giờ"),
        "confirm_information":
            MessageLookupByLibrary.simpleMessage("Xác nhận thông tin"),
        "confirm_password":
            MessageLookupByLibrary.simpleMessage("Nhập lại mật khẩu"),
        "confirm_session":
            MessageLookupByLibrary.simpleMessage("Xác nhận buổi học"),
        "confirm_voucher":
            MessageLookupByLibrary.simpleMessage("Áp dụng voucher"),
        "confirm_your_request":
            MessageLookupByLibrary.simpleMessage("Xác nhận yêu cầu"),
        "confirmed": MessageLookupByLibrary.simpleMessage("Đã xác nhận"),
        "confirmed_unit":
            MessageLookupByLibrary.simpleMessage("Buổi học đã xác nhận"),
        "connection_error": MessageLookupByLibrary.simpleMessage("Lỗi kết nối"),
        "connection_lost":
            MessageLookupByLibrary.simpleMessage("Không có kết nối mạng"),
        "contact_antoree":
            MessageLookupByLibrary.simpleMessage("Liên hệ Antoree"),
        "contract__details__creator":
            MessageLookupByLibrary.simpleMessage("Người tạo"),
        "contract__details__customer_service_name":
            MessageLookupByLibrary.simpleMessage("Người đại diện"),
        "contract__details__duration":
            MessageLookupByLibrary.simpleMessage("Giờ học"),
        "contract__details__total_price":
            MessageLookupByLibrary.simpleMessage("Giá trị"),
        "contract__error_text__contracts_empty":
            MessageLookupByLibrary.simpleMessage("Bạn chưa có hợp đồng nào"),
        "contract__header_text__contracts":
            MessageLookupByLibrary.simpleMessage("Hợp đồng"),
        "counterAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Hiển thị tiêu đề đếm"),
        "course": MessageLookupByLibrary.simpleMessage("Khóa học"),
        "course__course_detail__duration_learned":
            MessageLookupByLibrary.simpleMessage("Đã học"),
        "course__status__text__cancelled":
            MessageLookupByLibrary.simpleMessage("Đã hủy"),
        "course__status__text__closed":
            MessageLookupByLibrary.simpleMessage("Đã đóng"),
        "course__status__text__delay":
            MessageLookupByLibrary.simpleMessage("Tạm hoãn"),
        "course__status__text__opening":
            MessageLookupByLibrary.simpleMessage("Đang mở"),
        "course__status__text__pending":
            MessageLookupByLibrary.simpleMessage("Trì hoãn"),
        "course_absence_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Các khoá được chọn sẽ tạm hoãn đến khi quý học viên bắt đầu học lại"),
        "course_absence_notice":
            MessageLookupByLibrary.simpleMessage("Báo nghỉ khóa học"),
        "course_detail":
            MessageLookupByLibrary.simpleMessage("Chi tiết khoá học"),
        "course_duration":
            MessageLookupByLibrary.simpleMessage("Thời lượng khóa học"),
        "course_id": MessageLookupByLibrary.simpleMessage("Mã khoá học"),
        "course_id_s": MessageLookupByLibrary.simpleMessage("ID khoá học"),
        "course_name": MessageLookupByLibrary.simpleMessage("Tên khóa học"),
        "course_not_found":
            MessageLookupByLibrary.simpleMessage("Không tìm thấy khóa học"),
        "course_register":
            MessageLookupByLibrary.simpleMessage("Đăng ký khóa học"),
        "course_s": MessageLookupByLibrary.simpleMessage("Khóa"),
        "course_session":
            MessageLookupByLibrary.simpleMessage("Buổi học trong khoá"),
        "course_short": MessageLookupByLibrary.simpleMessage("Khóa"),
        "create_an_account":
            MessageLookupByLibrary.simpleMessage("Tạo tài khoản"),
        "create_profile": MessageLookupByLibrary.simpleMessage("Tạo hồ sơ"),
        "create_session_feedback":
            MessageLookupByLibrary.simpleMessage("Tạo nhận xét buổi học"),
        "create_test_result":
            MessageLookupByLibrary.simpleMessage("Tạo kết quả kiểm tra"),
        "current_password":
            MessageLookupByLibrary.simpleMessage("Mật khẩu hiện tại"),
        "current_password_wrong": MessageLookupByLibrary.simpleMessage(
            "Mật khẩu hiện tại không đúng"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Giao diện tối"),
        "day": MessageLookupByLibrary.simpleMessage("ngày"),
        "day_started": MessageLookupByLibrary.simpleMessage("Ngày bắt đầu"),
        "days": MessageLookupByLibrary.simpleMessage("ngày"),
        "days_relative": m5,
        "december": MessageLookupByLibrary.simpleMessage("Tháng 12"),
        "december_s": MessageLookupByLibrary.simpleMessage("Dec"),
        "degree": MessageLookupByLibrary.simpleMessage("bằng cấp"),
        "delay": MessageLookupByLibrary.simpleMessage("Tạm hoãn"),
        "delete_account": MessageLookupByLibrary.simpleMessage("Xoá tài khoản"),
        "delete_warning": m6,
        "detail_of_course": m7,
        "detail_reason": MessageLookupByLibrary.simpleMessage("Chi tiết lý do"),
        "dialog__message__absence_confirm_message":
            MessageLookupByLibrary.simpleMessage(
                "Bạn có chắc chắn muốn báo nghỉ buổi học này?"),
        "dialog__message__absence_success_message":
            MessageLookupByLibrary.simpleMessage(
                "Yêu cầu báo nghỉ của bạn đã được Antoree ghi nhận"),
        "dialog__message__absence_success_title":
            MessageLookupByLibrary.simpleMessage("Báo nghỉ thành công"),
        "dialog__message__coming_soon_message":
            MessageLookupByLibrary.simpleMessage("Sắp ra mắt"),
        "dialog__message__confirm_unit_no_message":
            MessageLookupByLibrary.simpleMessage(
                "Bạn có chắc muốn xác nhận giáo viên vắng mặt hoặc không dạy buổi học?"),
        "dialog__message__confirm_unit_report_message":
            MessageLookupByLibrary.simpleMessage(
                "Báo cáo này sẽ được gửi đến Antoree để xử lí. Bạn có cam đoan những gì bạn báo cáo là sự thật?"),
        "dialog__message__confirm_unit_successful_title":
            MessageLookupByLibrary.simpleMessage(
                "Xác nhận buổi học thành công"),
        "dialog__message__confirm_unit_yes_message":
            MessageLookupByLibrary.simpleMessage(
                "Bạn có chắc muốn xác nhận buổi học này không? "),
        "dialog__message__exit_message": MessageLookupByLibrary.simpleMessage(
            "Bạn có chắc chắn muốn đóng ứng dụng?"),
        "dialog__message__feature_coming_soon_message":
            MessageLookupByLibrary.simpleMessage("Tính năng sắp ra mắt"),
        "dialog__message__feedback_note": MessageLookupByLibrary.simpleMessage(
            "Đánh giá của bạn sẽ giúp nâng cao\nhiệu quả tới <0> cho buổi học tiếp theo."),
        "dialog__message__feedback_public_note":
            MessageLookupByLibrary.simpleMessage(
                "Nhận xét của bạn sẽ được hiển thị công khai"),
        "dialog__message__feedback_success_message":
            MessageLookupByLibrary.simpleMessage(
                "Đánh giá của bạn về buổi học đã được Antoree ghi nhận"),
        "dialog__message__feedback_success_title":
            MessageLookupByLibrary.simpleMessage("Đánh giá thành công"),
        "dialog__message__logout_message":
            MessageLookupByLibrary.simpleMessage("Bạn có chắc muốn đăng xuất?"),
        "dialog__message__logout_title":
            MessageLookupByLibrary.simpleMessage("Đăng xuất"),
        "dialog__message__reject_unit_successful_title":
            MessageLookupByLibrary.simpleMessage(
                "Từ chối xác nhận buổi học thành công"),
        "dialog__message__session_feedback_message":
            MessageLookupByLibrary.simpleMessage(
                "Bạn vừa hoàn thành một buổi học.\nHãy chia sẻ nhận xét về buổi học để chúng tôi có thể cải thiện chất lượng buổi học bạn nhé."),
        "dialog__message__token_expired_message":
            MessageLookupByLibrary.simpleMessage(
                "Phiên của bạn đã hết hạn, vui lòng đăng nhập lại"),
        "dialog__message__token_expired_title":
            MessageLookupByLibrary.simpleMessage("Phiên của bạn đã hết hạn"),
        "dialog__message__tracking_message": MessageLookupByLibrary.simpleMessage(
            "Chúng tôi thu thập các hành động của bạn để mang lại trải nghiệm và dịch vụ được cá nhân hóa hơn. Ví dụ, chúng tôi có thể dựa trên hành vi của bạn trong ứng dụng để phân tích lý do bạn bị kẹt, do đó cải thiện hiệu suất ứng dụng"),
        "dialog__message__tracking_title":
            MessageLookupByLibrary.simpleMessage("Gửi người dùng"),
        "dialog__message__warning_title":
            MessageLookupByLibrary.simpleMessage("Lưu ý"),
        "do_not_have": MessageLookupByLibrary.simpleMessage("Không có"),
        "dont_have_an_account":
            MessageLookupByLibrary.simpleMessage("Không có tài khoản?"),
        "duration": MessageLookupByLibrary.simpleMessage("Thời lượng"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "email_or_phone_number": MessageLookupByLibrary.simpleMessage("Email"),
        "empty": MessageLookupByLibrary.simpleMessage("Trống"),
        "empty_absence_history": MessageLookupByLibrary.simpleMessage(
            "Bạn đi học quá chuyên cần chúng tôi không thể tìm thấy được buổi nghỉ nào"),
        "empty_course": MessageLookupByLibrary.simpleMessage(
            "Không có khoá học được tìm thấy"),
        "empty_title":
            MessageLookupByLibrary.simpleMessage("Ở đây hơi trống vắng"),
        "english": MessageLookupByLibrary.simpleMessage("Tiếng anh"),
        "english_for_adult":
            MessageLookupByLibrary.simpleMessage("Tiếng Anh cho người lớn"),
        "english_for_chid_student": MessageLookupByLibrary.simpleMessage(
            "Tiếng anh cho trẻ em, học sinh "),
        "english_for_kid":
            MessageLookupByLibrary.simpleMessage("Tiếng Anh cho bé"),
        "enter_otp_sent_via": MessageLookupByLibrary.simpleMessage(
            "Mã OTP 6 chữ số đã gửi về <0> số điện thoại <1>"),
        "enter_sent_otp":
            MessageLookupByLibrary.simpleMessage("Nhập mã xác minh"),
        "enter_value": m8,
        "enter_your_new_password":
            MessageLookupByLibrary.simpleMessage("Nhập mật khẩu mới"),
        "enter_your_registered_phone_number":
            MessageLookupByLibrary.simpleMessage(
                "Nhập số điện thoại đã đăng ký "),
        "evaluate_session":
            MessageLookupByLibrary.simpleMessage("Đánh giá buổi học"),
        "evening": MessageLookupByLibrary.simpleMessage("Tối"),
        "explore_page": MessageLookupByLibrary.simpleMessage("Khám phá"),
        "extend": MessageLookupByLibrary.simpleMessage("Gia hạn thêm"),
        "extend_course":
            MessageLookupByLibrary.simpleMessage("Gia hạn khóa học"),
        "extend_duration_learn":
            MessageLookupByLibrary.simpleMessage("Gia hạn giờ học"),
        "february": MessageLookupByLibrary.simpleMessage("Tháng 2"),
        "february_s": MessageLookupByLibrary.simpleMessage("Feb"),
        "feedback__session_feedback__button_text":
            MessageLookupByLibrary.simpleMessage("Nhận xét"),
        "feedback__session_feedback__header_text_confirm":
            MessageLookupByLibrary.simpleMessage("Xác nhận đánh giá"),
        "feedback__session_feedback__header_text_session_feedback":
            MessageLookupByLibrary.simpleMessage("Nhận xét buổi học"),
        "feedback__session_feedback__label_attitude_text":
            MessageLookupByLibrary.simpleMessage("Thái độ"),
        "feedback__session_feedback__label_content_text":
            MessageLookupByLibrary.simpleMessage("Nội dung"),
        "feedback__session_feedback__label_happy_text":
            MessageLookupByLibrary.simpleMessage("Mức độ hài lòng"),
        "feedback__session_feedback__label_method_text":
            MessageLookupByLibrary.simpleMessage("Phương pháp giảng dạy"),
        "feedback__session_feedback__rate_1":
            MessageLookupByLibrary.simpleMessage("Tệ"),
        "feedback__session_feedback__rate_2":
            MessageLookupByLibrary.simpleMessage("Chưa hài lòng"),
        "feedback__session_feedback__rate_3":
            MessageLookupByLibrary.simpleMessage("Bình thường"),
        "feedback__session_feedback__rate_4":
            MessageLookupByLibrary.simpleMessage("Hài lòng"),
        "feedback__session_feedback__rate_5":
            MessageLookupByLibrary.simpleMessage("Tuyệt vời"),
        "feedback__session_feedback__text_feedback_hint":
            MessageLookupByLibrary.simpleMessage(
                "Hãy chia sẽ cảm nhận về buổi học và giáo viên này bạn nhé"),
        "feedback__session_feedback__text_feedback_hint_1":
            MessageLookupByLibrary.simpleMessage(
                "Đánh giá hơn 20 ký tự và dưới 256 ký tự"),
        "female": MessageLookupByLibrary.simpleMessage("Nữ"),
        "few_seconds_ago":
            MessageLookupByLibrary.simpleMessage("Vài giây trước"),
        "field_of_work":
            MessageLookupByLibrary.simpleMessage("Lĩnh vực làm việc"),
        "find_favorite_teacher":
            MessageLookupByLibrary.simpleMessage("Tìm giáo viên yêu thích"),
        "find_new_teacher_here":
            MessageLookupByLibrary.simpleMessage("Tìm giáo viên mới tại đây"),
        "five_recent_results":
            MessageLookupByLibrary.simpleMessage("5 kết quả gần nhất"),
        "fixed_flexible":
            MessageLookupByLibrary.simpleMessage("Cố định và linh hoạt"),
        "flexible": MessageLookupByLibrary.simpleMessage("Linh động"),
        "flexibleV2": MessageLookupByLibrary.simpleMessage("Linh hoạt"),
        "for_someone": MessageLookupByLibrary.simpleMessage("Dành cho"),
        "for_vietnamese_teachers":
            MessageLookupByLibrary.simpleMessage("Đối với giáo viên Việt Nam"),
        "foreign": MessageLookupByLibrary.simpleMessage("Nước ngoài"),
        "foreign_teacher":
            MessageLookupByLibrary.simpleMessage("Giáo viên Quốc Tế"),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Quên mật khẩu?"),
        "free": MessageLookupByLibrary.simpleMessage("Miễn phí"),
        "fri": MessageLookupByLibrary.simpleMessage("Thứ 6"),
        "friday": MessageLookupByLibrary.simpleMessage("Thứ sáu"),
        "friday_s": MessageLookupByLibrary.simpleMessage("T6"),
        "friend_referral":
            MessageLookupByLibrary.simpleMessage("Giới thiệu bạn bè"),
        "full": MessageLookupByLibrary.simpleMessage("Đầy đủ"),
        "full_name": MessageLookupByLibrary.simpleMessage("Họ và tên"),
        "gender": MessageLookupByLibrary.simpleMessage("Giới tính"),
        "get_now": MessageLookupByLibrary.simpleMessage("Nhận ngay"),
        "goal": MessageLookupByLibrary.simpleMessage("Mục tiêu"),
        "grammar": MessageLookupByLibrary.simpleMessage("Ngữ pháp"),
        "group_of_English_teachers":
            MessageLookupByLibrary.simpleMessage("Nhóm giáo viên"),
        "happening": MessageLookupByLibrary.simpleMessage("Đang diễn ra"),
        "hello": MessageLookupByLibrary.simpleMessage("Xin chào"),
        "hello_someone": m9,
        "help_center":
            MessageLookupByLibrary.simpleMessage("Trung tâm trợ giúp"),
        "history": MessageLookupByLibrary.simpleMessage("Lịch sử"),
        "home": MessageLookupByLibrary.simpleMessage("Trang chủ"),
        "home_work": MessageLookupByLibrary.simpleMessage("Bài tập về nhà"),
        "homework": MessageLookupByLibrary.simpleMessage("Bài tập về nhà"),
        "homework_content":
            MessageLookupByLibrary.simpleMessage("Nội dung bài tập"),
        "homework_summary":
            MessageLookupByLibrary.simpleMessage("Tổng hợp bài tập về nhà"),
        "hotline_bottom_sheet_work_time": MessageLookupByLibrary.simpleMessage(
            "8:00 - 17:00 từ thứ 2 đến thứ 6\nNgoài giờ làm hành chính xin vui lòng liên hệ hotline qua Zalo"),
        "hour": MessageLookupByLibrary.simpleMessage("giờ"),
        "hours": MessageLookupByLibrary.simpleMessage("giờ"),
        "hours_relative": m10,
        "i_got_it": MessageLookupByLibrary.simpleMessage("Tôi hiểu rồi"),
        "implementing_feature": MessageLookupByLibrary.simpleMessage(
            "Tính năng đang được xây dựng"),
        "implementing_feature_detail": MessageLookupByLibrary.simpleMessage(
            "Chúng tôi đang xây dựng tính năng này"),
        "infomation": MessageLookupByLibrary.simpleMessage("Thông tin"),
        "information_support":
            MessageLookupByLibrary.simpleMessage("Thông tin & Hỗ trợ"),
        "internet_connection_lost":
            MessageLookupByLibrary.simpleMessage("Mất kết nối internet"),
        "january": MessageLookupByLibrary.simpleMessage("Tháng 1"),
        "january_s": MessageLookupByLibrary.simpleMessage("Jan"),
        "japanese": MessageLookupByLibrary.simpleMessage("Tiếng Nhật"),
        "join": MessageLookupByLibrary.simpleMessage("Tham gia"),
        "july": MessageLookupByLibrary.simpleMessage("Tháng 7"),
        "july_s": MessageLookupByLibrary.simpleMessage("Jul"),
        "june": MessageLookupByLibrary.simpleMessage("Tháng 6"),
        "june_s": MessageLookupByLibrary.simpleMessage("Jun"),
        "language": MessageLookupByLibrary.simpleMessage("Ngôn ngữ"),
        "lastest_reviews":
            MessageLookupByLibrary.simpleMessage("Đánh giá mới nhất"),
        "late_night": MessageLookupByLibrary.simpleMessage("Khuya"),
        "later": MessageLookupByLibrary.simpleMessage("Để sau"),
        "learn": MessageLookupByLibrary.simpleMessage("Học"),
        "learn_english_online_1_on_1":
            MessageLookupByLibrary.simpleMessage("Học tiếng Anh 1 kèm 1"),
        "learning__feature_label__absence_history":
            MessageLookupByLibrary.simpleMessage("Lịch Sử Báo Nghỉ"),
        "learning__feature_label__certificates":
            MessageLookupByLibrary.simpleMessage("Chứng Chỉ"),
        "learning__feature_label__confirm":
            MessageLookupByLibrary.simpleMessage("Xác Nhận"),
        "learning__feature_label__penalty_history":
            MessageLookupByLibrary.simpleMessage("Lịch Sử Phạt"),
        "learning__feature_label__results":
            MessageLookupByLibrary.simpleMessage("Kết Quả"),
        "learning__feature_label__videos":
            MessageLookupByLibrary.simpleMessage("Video Buổi Học"),
        "learning__header_text__learning":
            MessageLookupByLibrary.simpleMessage("Học Tập"),
        "learning__label_text__maybe_you_interest":
            MessageLookupByLibrary.simpleMessage("Có thể bạn quan tâm"),
        "learning_topic": MessageLookupByLibrary.simpleMessage("Chủ đề học"),
        "learnt": MessageLookupByLibrary.simpleMessage("Đã học"),
        "lession": MessageLookupByLibrary.simpleMessage("Bài học"),
        "lesson": MessageLookupByLibrary.simpleMessage("Nội dung chủ đề"),
        "let_antoree_help_you":
            MessageLookupByLibrary.simpleMessage("Hay để Antoree giúp bạn nào"),
        "let_go": MessageLookupByLibrary.simpleMessage("Bắt đầu"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Giao diện sáng"),
        "list_videos": MessageLookupByLibrary.simpleMessage("Danh sách videos"),
        "log_out": MessageLookupByLibrary.simpleMessage("Đăng xuất"),
        "log_out_confirmation": MessageLookupByLibrary.simpleMessage(
            "Bạn có muốn đăng xuất khỏi thiết bị này?"),
        "login": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "login__error_message":
            MessageLookupByLibrary.simpleMessage("Lỗi đăng nhập"),
        "login_failed":
            MessageLookupByLibrary.simpleMessage("Đăng nhập thất bại"),
        "login_to_continue":
            MessageLookupByLibrary.simpleMessage("Đăng nhập để tiếp tục"),
        "main_course": MessageLookupByLibrary.simpleMessage("Khoá chính"),
        "makeup_confirm_notification": MessageLookupByLibrary.simpleMessage(
            "Giáo viên <0> đã chấp nhận buổi học bù, buổi học sẽ diễn ra vào lúc <1>, <2>"),
        "makeup_notification": MessageLookupByLibrary.simpleMessage(
            "<0> đã xin nghỉ buổi học <1> và có mong muốn đổi lịch. Bấm vào đây để chọn lịch học bù"),
        "makeup_reject_notification": MessageLookupByLibrary.simpleMessage(
            "Giáo viên <0> đã KHÔNG chọn được lịch nào phù hợp với yêu cầu học bù của bạn"),
        "makeup_submitted_notification": MessageLookupByLibrary.simpleMessage(
            "Giáo viên <0> đã xin nghỉ buổi học <1> và có mong muốn đổi lịch. Bấm vào đây để chọn lịch học."),
        "male": MessageLookupByLibrary.simpleMessage("Nam"),
        "march": MessageLookupByLibrary.simpleMessage("Tháng 3"),
        "march_s": MessageLookupByLibrary.simpleMessage("Mar"),
        "may": MessageLookupByLibrary.simpleMessage("Tháng 5"),
        "may_s": MessageLookupByLibrary.simpleMessage("May"),
        "menu__button_label__account_info":
            MessageLookupByLibrary.simpleMessage("Thông tin tài khoản"),
        "menu__button_label__certificates":
            MessageLookupByLibrary.simpleMessage("Giấy chứng nhận"),
        "menu__button_label__change_password":
            MessageLookupByLibrary.simpleMessage("Đổi mật khẩu"),
        "menu__button_label__contracts":
            MessageLookupByLibrary.simpleMessage("Hợp đồng"),
        "menu__button_label__course_policy":
            MessageLookupByLibrary.simpleMessage("Chính sách khóa học"),
        "menu__button_label__personal_information":
            MessageLookupByLibrary.simpleMessage("Thông tin cá nhân"),
        "menu__button_label__session_policy":
            MessageLookupByLibrary.simpleMessage("Quy định lớp học"),
        "menu__button_text__logout":
            MessageLookupByLibrary.simpleMessage("Đăng xuất"),
        "menu__header_text__your_profile":
            MessageLookupByLibrary.simpleMessage("Hồ sơ của bạn"),
        "menu__label_text__account":
            MessageLookupByLibrary.simpleMessage("Tài khoản"),
        "menu__label_text__information_support":
            MessageLookupByLibrary.simpleMessage("Thông tin và hỗ trợ"),
        "message": MessageLookupByLibrary.simpleMessage("Tin nhắn"),
        "message_customer_care":
            MessageLookupByLibrary.simpleMessage("Nhắn tin CSKH"),
        "minute": MessageLookupByLibrary.simpleMessage("phút"),
        "minutes": MessageLookupByLibrary.simpleMessage("phút"),
        "minutes_relative": m11,
        "mon": MessageLookupByLibrary.simpleMessage("Thứ 2"),
        "monday": MessageLookupByLibrary.simpleMessage("Thứ hai"),
        "monday_s": MessageLookupByLibrary.simpleMessage("T2"),
        "month": MessageLookupByLibrary.simpleMessage("tháng"),
        "months": MessageLookupByLibrary.simpleMessage("tháng"),
        "more": MessageLookupByLibrary.simpleMessage("Thêm"),
        "morning": MessageLookupByLibrary.simpleMessage("Sáng"),
        "name": MessageLookupByLibrary.simpleMessage("Tên"),
        "nationality": MessageLookupByLibrary.simpleMessage("Quốc tịch"),
        "new_password": MessageLookupByLibrary.simpleMessage("Mật khẩu mới"),
        "new_s": MessageLookupByLibrary.simpleMessage("Mới"),
        "next": MessageLookupByLibrary.simpleMessage("Tiếp tục"),
        "next_session": MessageLookupByLibrary.simpleMessage("Buổi tiếp theo"),
        "next_sessionV2":
            MessageLookupByLibrary.simpleMessage("Buổi học tiếp theo"),
        "next_session_in":
            MessageLookupByLibrary.simpleMessage("Buổi học sẽ bắt đầu sau "),
        "night": MessageLookupByLibrary.simpleMessage("Tối"),
        "no": MessageLookupByLibrary.simpleMessage("Không"),
        "no_available_teacher":
            MessageLookupByLibrary.simpleMessage("Không tìm thấy giáo viên"),
        "no_available_teacher_prompt": MessageLookupByLibrary.simpleMessage(
            "Không có giáo viên rãnh vào thời gian bạn đã chọn. Xin hãy chọn giờ khác"),
        "no_confirm": MessageLookupByLibrary.simpleMessage("Không xác nhận"),
        "no_course": MessageLookupByLibrary.simpleMessage("Không có khóa học"),
        "no_goal_yet": MessageLookupByLibrary.simpleMessage("Chưa có mục tiêu"),
        "no_information":
            MessageLookupByLibrary.simpleMessage("Chưa có thông tin"),
        "no_notification":
            MessageLookupByLibrary.simpleMessage("Không có thông báo"),
        "no_review_from_teacher": MessageLookupByLibrary.simpleMessage(
            "Hiện chưa có đánh giá định kì"),
        "no_session": MessageLookupByLibrary.simpleMessage("Không có buổi học"),
        "not_confirmed_unit": MessageLookupByLibrary.simpleMessage(
            "Buổi học không được xác nhận"),
        "not_found": MessageLookupByLibrary.simpleMessage(
            "Chúng tôi không thể tìm thấy gì ở đây cả"),
        "not_happened": MessageLookupByLibrary.simpleMessage("Không diễn ra"),
        "note_for_student":
            MessageLookupByLibrary.simpleMessage("Ghi chú cho học viên"),
        "notes": MessageLookupByLibrary.simpleMessage("Ghi chú"),
        "notification": MessageLookupByLibrary.simpleMessage("Thông báo"),
        "notification__bonus_unit_title": m12,
        "notification__error_notification_empty":
            MessageLookupByLibrary.simpleMessage(
                "Hiện tại không có thông báo nào"),
        "notification__filter_text__all":
            MessageLookupByLibrary.simpleMessage("Tất cả"),
        "notification__filter_text__unread":
            MessageLookupByLibrary.simpleMessage("Chưa đọc"),
        "notification__header_text__notifications":
            MessageLookupByLibrary.simpleMessage("Thông báo"),
        "notification__remind_class__15": MessageLookupByLibrary.simpleMessage(
            "Hãy chuẩn bị sẵn sàng, buổi học của bạn sẽ diễn ra sau 15 phút nữa"),
        "notification__remind_class__4": m13,
        "notification__session_start_at":
            MessageLookupByLibrary.simpleMessage("Diễn ra"),
        "october": MessageLookupByLibrary.simpleMessage("Tháng 10"),
        "october_s": MessageLookupByLibrary.simpleMessage("Oct"),
        "ok": MessageLookupByLibrary.simpleMessage("Đồng ý"),
        "old_password": MessageLookupByLibrary.simpleMessage("Mật khẩu cũ"),
        "open": MessageLookupByLibrary.simpleMessage("Hoạt động"),
        "opening": MessageLookupByLibrary.simpleMessage("Đang mở"),
        "optional": MessageLookupByLibrary.simpleMessage("Tuỳ chọn"),
        "or": MessageLookupByLibrary.simpleMessage("hoặc"),
        "origin_duration":
            MessageLookupByLibrary.simpleMessage("Thời lượng gốc"),
        "other": MessageLookupByLibrary.simpleMessage("Khác"),
        "other_error": MessageLookupByLibrary.simpleMessage("Lỗi khác"),
        "other_reason": MessageLookupByLibrary.simpleMessage("Lý do khác"),
        "otp_not_send":
            MessageLookupByLibrary.simpleMessage("Bạn chưa nhận được mã OTP?"),
        "otp_page_button_resend":
            MessageLookupByLibrary.simpleMessage("Gửi lại"),
        "otp_page_button_send_to_sms":
            MessageLookupByLibrary.simpleMessage("Gửi đến SMS"),
        "overview": MessageLookupByLibrary.simpleMessage("Tổng quan"),
        "page": MessageLookupByLibrary.simpleMessage("Số trang"),
        "passed_bonus_duration":
            MessageLookupByLibrary.simpleMessage("Số giờ được tặng đã học"),
        "passed_duration":
            MessageLookupByLibrary.simpleMessage("Thời lượng đã học"),
        "password": MessageLookupByLibrary.simpleMessage("Mật khẩu"),
        "passwordsAreNotMatch":
            MessageLookupByLibrary.simpleMessage("Mật khẩu không trùng"),
        "penalty__dialog_details_title":
            MessageLookupByLibrary.simpleMessage("Chi tiết phạt"),
        "penalty__dialog_remove_success":
            MessageLookupByLibrary.simpleMessage("Gỡ phạt thành công"),
        "penalty__error_text__empty":
            MessageLookupByLibrary.simpleMessage("Không có lịch sử phạt nào"),
        "penalty__header_text__penalty_history":
            MessageLookupByLibrary.simpleMessage("Lịch Sử Phạt"),
        "penalty__penalty_detail__note": m14,
        "penalty__penalty_detail__remove_penalty":
            MessageLookupByLibrary.simpleMessage("Gỡ phạt"),
        "penalty__penalty_detail__remove_penalty_confirm_message":
            MessageLookupByLibrary.simpleMessage(
                "Bạn sẽ bị thu hồi số thời lượng khóa học đã được cộng vào trước đó!\nBạn có chắc muốn gỡ phạt cho Giáo Viên này không?"),
        "pending": MessageLookupByLibrary.simpleMessage("Trì hoãn"),
        "person_absence_at": m15,
        "personal_infomation":
            MessageLookupByLibrary.simpleMessage("Thông tin cá nhân"),
        "personal_preference":
            MessageLookupByLibrary.simpleMessage("Nhu cầu cá nhân"),
        "personals_goal":
            MessageLookupByLibrary.simpleMessage("Mục tiêu cá nhân"),
        "phone_number": MessageLookupByLibrary.simpleMessage("Số điện thoại"),
        "pick": MessageLookupByLibrary.simpleMessage("chọn"),
        "picked": MessageLookupByLibrary.simpleMessage("Đã chọn"),
        "please_enter": m16,
        "please_enter_signed_phone_number":
            MessageLookupByLibrary.simpleMessage(
                "Vui lòng nhập số điện thoại đã đăng ký"),
        "profile": MessageLookupByLibrary.simpleMessage("Hồ sơ"),
        "profile__header_text__my_profile":
            MessageLookupByLibrary.simpleMessage("Hồ sơ của tôi"),
        "promo_gift": MessageLookupByLibrary.simpleMessage("Ưu đãi đổi quà"),
        "quick_join": MessageLookupByLibrary.simpleMessage("Tham gia ngay"),
        "reason": MessageLookupByLibrary.simpleMessage("Lý do"),
        "receive": MessageLookupByLibrary.simpleMessage("Nhận"),
        "referral": MessageLookupByLibrary.simpleMessage("Mã giới thiệu"),
        "refuse_confirm":
            MessageLookupByLibrary.simpleMessage("Từ chối xác nhận"),
        "regions": MessageLookupByLibrary.simpleMessage("Vùng miền"),
        "register": MessageLookupByLibrary.simpleMessage("Đăng ký"),
        "register_duration":
            MessageLookupByLibrary.simpleMessage("thời lượng đăng ký"),
        "register_new_course":
            MessageLookupByLibrary.simpleMessage("Đăng ký khoá mới"),
        "reject": MessageLookupByLibrary.simpleMessage("Từ chối"),
        "rejected": MessageLookupByLibrary.simpleMessage("Đã"),
        "relative_days_next": m17,
        "relative_hours_next": m18,
        "relative_minutes_next": m19,
        "remain_hours": MessageLookupByLibrary.simpleMessage("Số giờ còn lại"),
        "remain_hours_after_confirm": MessageLookupByLibrary.simpleMessage(
            "Số giờ còn lại sau khi xác nhận"),
        "remaining_duration":
            MessageLookupByLibrary.simpleMessage("Thời lượng còn lại"),
        "reminder_open_course_absence_at": MessageLookupByLibrary.simpleMessage(
            "Khóa học của bạn sẽ được mở lại lúc <0>"),
        "remove_seleted": MessageLookupByLibrary.simpleMessage("Bỏ đã chọn"),
        "request": MessageLookupByLibrary.simpleMessage("Yêu cầu"),
        "request_cancelled_prematurely":
            MessageLookupByLibrary.simpleMessage("Yêu cầu bị hủy sớm"),
        "request_confirm_session":
            MessageLookupByLibrary.simpleMessage("Yêu cầu xác nhận buổi học"),
        "request_failed": MessageLookupByLibrary.simpleMessage(
            "Yêu cầu bị thất bại, vui lòng thử lại sau ít phút"),
        "request_for_extension":
            MessageLookupByLibrary.simpleMessage("Yêu cầu gia hạn"),
        "required": MessageLookupByLibrary.simpleMessage("Không bỏ trống"),
        "resend_otp_after":
            MessageLookupByLibrary.simpleMessage("Gửi lại mã sau "),
        "reset_account_password":
            MessageLookupByLibrary.simpleMessage("Đặt lại mật khẩu"),
        "result": MessageLookupByLibrary.simpleMessage("Kết quả"),
        "results__error__emtpy_evaluate_result":
            MessageLookupByLibrary.simpleMessage(
                "Bạn chưa có đánh giá định kỳ nào"),
        "results__error__emtpy_test_result":
            MessageLookupByLibrary.simpleMessage(
                "Bạn chưa có kết quả kiểm tra nào"),
        "results__header_text__results":
            MessageLookupByLibrary.simpleMessage("Kết quả"),
        "results__tab_name__evaluate":
            MessageLookupByLibrary.simpleMessage("Đánh giá định kỳ"),
        "results__tab_name__test":
            MessageLookupByLibrary.simpleMessage("Test định kỳ"),
        "results__text_info__evaluate_at":
            MessageLookupByLibrary.simpleMessage("Đánh giá vào"),
        "results__text_info__test_at":
            MessageLookupByLibrary.simpleMessage("Kiểm tra vào"),
        "results__text_info__test_level":
            MessageLookupByLibrary.simpleMessage("Cấp độ"),
        "retry": MessageLookupByLibrary.simpleMessage("Thử lại"),
        "review": MessageLookupByLibrary.simpleMessage("Nhận xét"),
        "roadmap": MessageLookupByLibrary.simpleMessage("Lộ trình"),
        "sat": MessageLookupByLibrary.simpleMessage("Thứ 7"),
        "saturday": MessageLookupByLibrary.simpleMessage("Thứ bảy"),
        "saturday_s": MessageLookupByLibrary.simpleMessage("T7"),
        "save": MessageLookupByLibrary.simpleMessage("Lưu"),
        "schedule": MessageLookupByLibrary.simpleMessage("Lịch học"),
        "schedule__error__no_happened_session":
            MessageLookupByLibrary.simpleMessage(
                "Hiện tại bạn không có buổi học nào đã hoàn thành"),
        "schedule__error__no_up_comming_session":
            MessageLookupByLibrary.simpleMessage(
                "Hiện tại bạn không có lịch học sắp diễn ra"),
        "schedule__header_text__happened":
            MessageLookupByLibrary.simpleMessage("Hoàn thành"),
        "schedule__header_text__schedule":
            MessageLookupByLibrary.simpleMessage("Lịch học"),
        "schedule__header_text__up_comming":
            MessageLookupByLibrary.simpleMessage("Sắp diễn ra"),
        "schedule__schedule_item_button_text__absence":
            MessageLookupByLibrary.simpleMessage("Báo nghỉ"),
        "scheduled_session":
            MessageLookupByLibrary.simpleMessage("Buổi học dự kiến"),
        "score": MessageLookupByLibrary.simpleMessage("Điểm"),
        "search": MessageLookupByLibrary.simpleMessage("Tìm kiếm"),
        "see_more": MessageLookupByLibrary.simpleMessage("Xem thêm"),
        "select_all": MessageLookupByLibrary.simpleMessage("Chọn tất cả"),
        "selected": MessageLookupByLibrary.simpleMessage("Đã chọn"),
        "send": MessageLookupByLibrary.simpleMessage("Gửi"),
        "send_feedback": MessageLookupByLibrary.simpleMessage("Gửi phản hồi"),
        "send_it": MessageLookupByLibrary.simpleMessage("Gửi đi"),
        "send_notify": MessageLookupByLibrary.simpleMessage("Gửi thông báo"),
        "sent_a_request_to_confirm_the_session_at":
            MessageLookupByLibrary.simpleMessage(
                "<0> đã gửi yêu cầu xác nhận buổi học lúc <1>"),
        "september": MessageLookupByLibrary.simpleMessage("Tháng 9"),
        "september_s": MessageLookupByLibrary.simpleMessage("Sep"),
        "serrver_error": MessageLookupByLibrary.simpleMessage("Lỗi máy chủ"),
        "service_feedback":
            MessageLookupByLibrary.simpleMessage("Phản hồi dịch vụ"),
        "session": MessageLookupByLibrary.simpleMessage("Buổi học"),
        "session_absence":
            MessageLookupByLibrary.simpleMessage("Báo nghỉ buổi học"),
        "session_absence_notice":
            MessageLookupByLibrary.simpleMessage("Báo nghỉ buổi học"),
        "session_content":
            MessageLookupByLibrary.simpleMessage("Nội dung buổi học"),
        "session_not_found":
            MessageLookupByLibrary.simpleMessage("Không tìm thấy buổi học"),
        "session_rating":
            MessageLookupByLibrary.simpleMessage("Mức độ hài lòng của bạn"),
        "session_short": MessageLookupByLibrary.simpleMessage("Buổi"),
        "session_video": MessageLookupByLibrary.simpleMessage("Video buổi học"),
        "setting_page_label_language":
            MessageLookupByLibrary.simpleMessage("Ngôn ngữ"),
        "setting_page_title_app_bar":
            MessageLookupByLibrary.simpleMessage("Cài đặt"),
        "settting_page_label_dark_mode":
            MessageLookupByLibrary.simpleMessage("Chế độ tối"),
        "show": MessageLookupByLibrary.simpleMessage("Hiển thị"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "sign_out": MessageLookupByLibrary.simpleMessage("Đăng xuất"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Đăng ký"),
        "sort_by": MessageLookupByLibrary.simpleMessage("Sắp xếp bằng"),
        "spread_antoree":
            MessageLookupByLibrary.simpleMessage("Lan tỏa Antoree"),
        "study": MessageLookupByLibrary.simpleMessage("Học tập"),
        "submit_home_work":
            MessageLookupByLibrary.simpleMessage("Nộp bài tập về nhà"),
        "submit_home_work_short":
            MessageLookupByLibrary.simpleMessage("Nộp bài tập"),
        "submitted_a_leave_absence_at": MessageLookupByLibrary.simpleMessage(
            "<0> đã nộp đơn xin nghỉ phép buổi học diễn ra lúc <1>"),
        "sun": MessageLookupByLibrary.simpleMessage("CN"),
        "sunday": MessageLookupByLibrary.simpleMessage("Chủ Nhật"),
        "sunday_s": MessageLookupByLibrary.simpleMessage("CN"),
        "support": MessageLookupByLibrary.simpleMessage("Hỗ trợ"),
        "take_place_on":
            MessageLookupByLibrary.simpleMessage("Diễn ra vào lúc"),
        "teacher": MessageLookupByLibrary.simpleMessage("Giáo viên"),
        "teacher_attitude":
            MessageLookupByLibrary.simpleMessage("Thái độ giáo viên"),
        "teacher_name": MessageLookupByLibrary.simpleMessage("Tên giáo viên"),
        "teaching_method":
            MessageLookupByLibrary.simpleMessage("Phương pháp giảng dạy"),
        "terms_of_service":
            MessageLookupByLibrary.simpleMessage("Điều khoản dịch vụ"),
        "test": MessageLookupByLibrary.simpleMessage("Kiểm tra"),
        "test_result": MessageLookupByLibrary.simpleMessage("Kết quả kiểm tra"),
        "thu": MessageLookupByLibrary.simpleMessage("Thứ 5"),
        "thursday": MessageLookupByLibrary.simpleMessage("Thứ năm"),
        "thursday_s": MessageLookupByLibrary.simpleMessage("T5"),
        "times": MessageLookupByLibrary.simpleMessage("Thời gian"),
        "to_continue": MessageLookupByLibrary.simpleMessage("Tiếp tục"),
        "to_pay": MessageLookupByLibrary.simpleMessage("Thanh toán"),
        "today": MessageLookupByLibrary.simpleMessage("Hôm nay"),
        "today_course":
            MessageLookupByLibrary.simpleMessage("Khóa học hôm nay"),
        "today_session":
            MessageLookupByLibrary.simpleMessage("Buổi học hôm nay"),
        "today_sessions":
            MessageLookupByLibrary.simpleMessage("Buổi học hôm nay"),
        "tomorrow": MessageLookupByLibrary.simpleMessage("Ngày mai"),
        "top_favorite_teachers":
            MessageLookupByLibrary.simpleMessage("Giáo viên được yêu thích"),
        "topic": MessageLookupByLibrary.simpleMessage("Chủ đề"),
        "total_duration":
            MessageLookupByLibrary.simpleMessage("Tổng thời lượng"),
        "total_score": MessageLookupByLibrary.simpleMessage("Tổng điểm"),
        "transfer": MessageLookupByLibrary.simpleMessage("Chuyển đổi"),
        "trial": MessageLookupByLibrary.simpleMessage("Học thử"),
        "try_again": MessageLookupByLibrary.simpleMessage("Hãy thử lại sau"),
        "tue": MessageLookupByLibrary.simpleMessage("Thứ 3"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Thứ ba"),
        "tuesday_s": MessageLookupByLibrary.simpleMessage("T3"),
        "tuition_levels": MessageLookupByLibrary.simpleMessage("Mức học phí"),
        "unconfirmed_unit":
            MessageLookupByLibrary.simpleMessage("Buổi học chưa xác nhận"),
        "unit": MessageLookupByLibrary.simpleMessage("Chủ đề"),
        "unit__unit_detail_status_absence":
            MessageLookupByLibrary.simpleMessage("Buổi học đã được báo nghỉ"),
        "unit_detail":
            MessageLookupByLibrary.simpleMessage("Chi tiết buổi học"),
        "unit_topic": MessageLookupByLibrary.simpleMessage("Chủ đề buổi học"),
        "units__filter_button_text_happened":
            MessageLookupByLibrary.simpleMessage("Hoàn\nthành"),
        "units__filter_button_text_new":
            MessageLookupByLibrary.simpleMessage("Buổi\nchưa học"),
        "units__filter_button_text_not_happened":
            MessageLookupByLibrary.simpleMessage("Không\ndiễn ra"),
        "units__filter_button_text_waiting":
            MessageLookupByLibrary.simpleMessage("Chờ\nxác nhận"),
        "units__filter_text_happened":
            MessageLookupByLibrary.simpleMessage("Hoàn thành"),
        "units__filter_text_new":
            MessageLookupByLibrary.simpleMessage("Buổi chưa học"),
        "units__filter_text_not_happened":
            MessageLookupByLibrary.simpleMessage("Không diễn ra"),
        "units__filter_text_waiting":
            MessageLookupByLibrary.simpleMessage("Chờ xác nhận"),
        "unknown": MessageLookupByLibrary.simpleMessage("Không xác định"),
        "unknown_error":
            MessageLookupByLibrary.simpleMessage("Lỗi không xác định"),
        "update": MessageLookupByLibrary.simpleMessage("Cập nhật"),
        "updated": MessageLookupByLibrary.simpleMessage("Đã cập nhật"),
        "updating": MessageLookupByLibrary.simpleMessage("Đang cập nhật"),
        "verify_otp_code":
            MessageLookupByLibrary.simpleMessage("Xác nhận mã OTP"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Tiếng việt"),
        "view_all_teacher":
            MessageLookupByLibrary.simpleMessage("Xem tất cả giáo viên"),
        "view_history": MessageLookupByLibrary.simpleMessage("Xem lịch sử"),
        "vocabulary": MessageLookupByLibrary.simpleMessage("Từ vựng"),
        "voice": MessageLookupByLibrary.simpleMessage("Chất giọng"),
        "waiting_confirm": MessageLookupByLibrary.simpleMessage("Chờ xác nhận"),
        "wed": MessageLookupByLibrary.simpleMessage("Thứ 4"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Thứ tư"),
        "wednesday_s": MessageLookupByLibrary.simpleMessage("T4"),
        "wrong_username_password": MessageLookupByLibrary.simpleMessage(
            "Email/Số điện thoại hoặc mật khẩu không đúng!"),
        "year": MessageLookupByLibrary.simpleMessage("năm"),
        "years": MessageLookupByLibrary.simpleMessage("năm"),
        "yes": MessageLookupByLibrary.simpleMessage("Có"),
        "you_have_learnt":
            MessageLookupByLibrary.simpleMessage("Bạn đã học được"),
        "you_have_no_course":
            MessageLookupByLibrary.simpleMessage("Bạn không có khoá học nào"),
        "you_to_take_notes":
            MessageLookupByLibrary.simpleMessage("Nhập ghi chú của bạn"),
        "your_feedback":
            MessageLookupByLibrary.simpleMessage("Phản hồi của bạn"),
        "your_goal": MessageLookupByLibrary.simpleMessage("Mục tiêu của bạn")
      };
}
