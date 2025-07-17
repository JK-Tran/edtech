// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(courseType, hour, dateMonth) =>
      "Absence notice ${courseType} at ${hour} on ${dateMonth}";

  static String m1(time) => "Absence confirmed at ${time}";

  static String m2(userType) =>
      "Help your ${userType} and support team know the details.";

  static String m3(errorCode) => "unknownException (${errorCode})";

  static String m4(message, number) =>
      "Please enter ${message} with more than ${number} characters.";

  static String m5(days) => "${days} days ago";

  static String m6(selectedItem) =>
      "${selectedItem} cannot be recovered, Are you sure you want to delete?";

  static String m7(courseId) => "Detail of course #${courseId}";

  static String m8(content) => "Enter ${content}";

  static String m9(name) => "Hello ${name}";

  static String m10(hours) => "${hours} hours ago";

  static String m11(minutes) => "${minutes} minutes ago";

  static String m12(courseId) =>
      "Congratulations, your course ${courseId} has been added 1 hour.";

  static String m13(startAt) =>
      "Get ready, your next session will start at ${startAt}";

  static String m14(teacherName, courseId) =>
      "The penalty for teacher ${teacherName} has been automatically added to the duration of course ${courseId}.\nYou can lift the penalty for the teacher by pressing the \'Remove Penalty\' button, and Antoree will retract the previously added duration.";

  static String m15(person, absentAt) =>
      "${person} leave of absence at ${absentAt}";

  static String m16(content) => "Please enter ${content}";

  static String m17(days) => "next ${days} days";

  static String m18(hours) => "next ${hours} hours";

  static String m19(minutes) => "next ${minutes} minutes";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_this_teacher":
            MessageLookupByLibrary.simpleMessage("About this Teacher"),
        "absence__absence_details__absence_reason":
            MessageLookupByLibrary.simpleMessage("Absence reason"),
        "absence__absence_details__absence_time":
            MessageLookupByLibrary.simpleMessage("Absence time"),
        "absence__absence_details__header_text__absence_detail":
            MessageLookupByLibrary.simpleMessage("Absence detail"),
        "absence__absence_details__label_text__absence_request":
            MessageLookupByLibrary.simpleMessage("Absence notice request"),
        "absence__absence_details__label_text_notice":
            MessageLookupByLibrary.simpleMessage(
                "Dear students, please be aware of the leave time and adjust your schedule accordingly."),
        "absence__absence_details__status_canceled":
            MessageLookupByLibrary.simpleMessage("Canceled"),
        "absence__absence_details__status_success":
            MessageLookupByLibrary.simpleMessage("Success"),
        "absence__absence_details_by_cs": MessageLookupByLibrary.simpleMessage(
            "Customerr support helps students submit absence requests"),
        "absence__absence_details_by_student":
            MessageLookupByLibrary.simpleMessage(
                "Student submitted leave request"),
        "absence__absence_details_by_teacher":
            MessageLookupByLibrary.simpleMessage(
                "Teacher submitted leave request"),
        "absence__absence_details_by_teacher_for_student":
            MessageLookupByLibrary.simpleMessage(
                "Teacher submitted leave request on behalf of student"),
        "absence__absence_details_created_at":
            MessageLookupByLibrary.simpleMessage("Created at"),
        "absence__absence_session__absence_reason_text":
            MessageLookupByLibrary.simpleMessage("Absence reason"),
        "absence__absence_session__absence_reason_text_hint":
            MessageLookupByLibrary.simpleMessage("Enter reason"),
        "absence__absence_session__absence_reason_text_warning":
            MessageLookupByLibrary.simpleMessage("Please enter reason"),
        "absence__absence_session__absence_reason_text_warning_1":
            MessageLookupByLibrary.simpleMessage(
                "Please enter a reason with more than 10 characters."),
        "absence__absence_session__label_select_absence_date_base_on_the_teacher_schedule":
            MessageLookupByLibrary.simpleMessage(
                "Select absence date based on the teacher’s schedule"),
        "absence__absence_session__label_text_absence":
            MessageLookupByLibrary.simpleMessage("Report absence for session"),
        "absence_absence_session__label_text_choose_day":
            MessageLookupByLibrary.simpleMessage("Choose Date"),
        "absence_absence_session__label_text_edit_time":
            MessageLookupByLibrary.simpleMessage("Edit"),
        "absence_absence_session__label_text_make_up_class_time":
            MessageLookupByLibrary.simpleMessage("Make-up class time"),
        "absence_absence_session__label_text_makeup_date_confirm_by_teacher":
            MessageLookupByLibrary.simpleMessage(
                "Makeup Date Confirmed by Teacher"),
        "absence_absence_session__label_text_no_available_time":
            MessageLookupByLibrary.simpleMessage(
                "No available time slots on this day"),
        "absence_absence_session__label_text_selecte_time":
            MessageLookupByLibrary.simpleMessage("Select Time"),
        "absence_absence_session__label_text_selected_make_up_class_time":
            MessageLookupByLibrary.simpleMessage("Selected Makeup Class Time"),
        "absence_at": m0,
        "absence_confirmed_at": m1,
        "absence_course":
            MessageLookupByLibrary.simpleMessage("Course absence notice"),
        "absence_fail":
            MessageLookupByLibrary.simpleMessage("Your absence request fail"),
        "absence_history__header_text__absence_history":
            MessageLookupByLibrary.simpleMessage("Absence History"),
        "absence_history__label_text__absence_session":
            MessageLookupByLibrary.simpleMessage("Absence session"),
        "absence_history__label_text_cancel_absence_request":
            MessageLookupByLibrary.simpleMessage(
                "To cancel the absence request, please contact"),
        "absence_infomation": m2,
        "absence_notice":
            MessageLookupByLibrary.simpleMessage("Absence notice"),
        "absence_policy__header_text_policy_1_on_1":
            MessageLookupByLibrary.simpleMessage("1-on-1 Class Policy"),
        "absence_policy__label_text_for_student_content":
            MessageLookupByLibrary.simpleMessage(
                "- If a student reports an absence before the class starts, the class will be preserved and no charge will be applied.\n- If a student reports an absence after the class has begun, the teacher will be credited with 50% of the class duration.\n- If a student does not report an absence and the teacher waits throughout the class, the teacher has the right to charge for the class, or the teacher can report the absence on behalf of the student and the class will not be charged."),
        "absence_policy__label_text_for_student_title":
            MessageLookupByLibrary.simpleMessage("For students"),
        "absence_policy__label_text_for_teacher_content":
            MessageLookupByLibrary.simpleMessage(
                "- If a teacher reports an absence before the class starts, the class will be preserved and no charge will be applied.\n- If a teacher does not report an absence and the student waits for more than 5 minutes past the scheduled class time without the teacher being present, the teacher will be penalized with one equivalent class, and this class will be added directly to the student\'s course."),
        "absence_policy__label_text_for_teacher_title":
            MessageLookupByLibrary.simpleMessage("For teachers"),
        "absence_policy__label_text_notice": MessageLookupByLibrary.simpleMessage(
            "Note: Students can remove the penalty for teachers through the class management application, and Antoree will retract the class that was added to the student\'s course."),
        "absence_policy__label_text_should": MessageLookupByLibrary.simpleMessage(
            "Students should not miss more than 2 classes per month to ensure the effectiveness of the course."),
        "absence_rule":
            MessageLookupByLibrary.simpleMessage("Absence notice rule"),
        "absence_unsuccessfully": MessageLookupByLibrary.simpleMessage(
            "Absence request unsuccessfully! Please double check the absence time and try again."),
        "absent_notification_cancel": MessageLookupByLibrary.simpleMessage(
            "Xin chào <0>, Yêu cầu báo nghỉ buổi học <1> đã được HỦY thành công"),
        "achieved_roadmap": MessageLookupByLibrary.simpleMessage("Achieved"),
        "achievement": MessageLookupByLibrary.simpleMessage("Achievement"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "all_courses": MessageLookupByLibrary.simpleMessage("All Courses"),
        "all_sessions": MessageLookupByLibrary.simpleMessage("All sessions"),
        "all_teacher": MessageLookupByLibrary.simpleMessage("All teachers"),
        "app_name": MessageLookupByLibrary.simpleMessage("Antoree"),
        "appearance": MessageLookupByLibrary.simpleMessage("Appearance"),
        "attendance_rate":
            MessageLookupByLibrary.simpleMessage("Atendance rate"),
        "available_courses":
            MessageLookupByLibrary.simpleMessage("Available courses"),
        "available_slot":
            MessageLookupByLibrary.simpleMessage("Available slot"),
        "available_time":
            MessageLookupByLibrary.simpleMessage("Available time"),
        "begin": MessageLookupByLibrary.simpleMessage("Begin"),
        "birthday": MessageLookupByLibrary.simpleMessage("Birthday"),
        "bonus_duration":
            MessageLookupByLibrary.simpleMessage("Bonus duration"),
        "book_name": MessageLookupByLibrary.simpleMessage("Name of the book"),
        "book_schedule": MessageLookupByLibrary.simpleMessage("Book schedule"),
        "cancel_a_leave_absence_at": MessageLookupByLibrary.simpleMessage(
            "<0>\'s request leave of absence has been canceled!"),
        "cancel_request":
            MessageLookupByLibrary.simpleMessage("Cancel request"),
        "cancel_schedule":
            MessageLookupByLibrary.simpleMessage("Cancel Schedule"),
        "cancel_selected":
            MessageLookupByLibrary.simpleMessage("Cancel selected"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
        "cant_find": MessageLookupByLibrary.simpleMessage("No items found"),
        "carer": MessageLookupByLibrary.simpleMessage("Carer"),
        "certificate__details__completed_date":
            MessageLookupByLibrary.simpleMessage("Completed at"),
        "certificate__error_text__certificates_empty":
            MessageLookupByLibrary.simpleMessage(
                "Oops! You haven\'t completed any courses yet. Keep up the good work!"),
        "certificate__header_text__certificates":
            MessageLookupByLibrary.simpleMessage("Certificate"),
        "change_calendar":
            MessageLookupByLibrary.simpleMessage("Change calendar"),
        "change_password__button_text__change_password":
            MessageLookupByLibrary.simpleMessage("Change password"),
        "change_password__header_text_change_password":
            MessageLookupByLibrary.simpleMessage("Change password"),
        "change_password__label_text__current_password":
            MessageLookupByLibrary.simpleMessage("Enter current password"),
        "change_password__label_text__new_password":
            MessageLookupByLibrary.simpleMessage("Enter new password"),
        "change_password_successfully": MessageLookupByLibrary.simpleMessage(
            "Change password successfully"),
        "change_study_calendar":
            MessageLookupByLibrary.simpleMessage("Thay đổi lịch học"),
        "change_teacher":
            MessageLookupByLibrary.simpleMessage("Change teacher"),
        "change_topic": MessageLookupByLibrary.simpleMessage("Change topic"),
        "child": MessageLookupByLibrary.simpleMessage("Child"),
        "choose_another_date":
            MessageLookupByLibrary.simpleMessage("Please choose another date"),
        "choose_course": MessageLookupByLibrary.simpleMessage("Choose course"),
        "choose_date": MessageLookupByLibrary.simpleMessage("Choose date"),
        "choose_field_of_work":
            MessageLookupByLibrary.simpleMessage("Choose field of work"),
        "choose_gender":
            MessageLookupByLibrary.simpleMessage("Please choose gender"),
        "choose_nationality":
            MessageLookupByLibrary.simpleMessage("Choose nationality"),
        "choose_session":
            MessageLookupByLibrary.simpleMessage("Choose session"),
        "choose_study_program":
            MessageLookupByLibrary.simpleMessage("Choose a study program"),
        "choose_suitable_price":
            MessageLookupByLibrary.simpleMessage("Choose suitable price"),
        "choose_teacher":
            MessageLookupByLibrary.simpleMessage("Choose Teacher"),
        "choose_time": MessageLookupByLibrary.simpleMessage("Choose time"),
        "choose_user": MessageLookupByLibrary.simpleMessage("Select user"),
        "closed": MessageLookupByLibrary.simpleMessage("Closed"),
        "closing": MessageLookupByLibrary.simpleMessage("Closing"),
        "coming_soon": MessageLookupByLibrary.simpleMessage("Coming soon"),
        "common___error__timeout_exception":
            MessageLookupByLibrary.simpleMessage("Timeout exception"),
        "common__action__accept":
            MessageLookupByLibrary.simpleMessage("Accept"),
        "common__action__add": MessageLookupByLibrary.simpleMessage("Add"),
        "common__action__apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "common__action__back": MessageLookupByLibrary.simpleMessage("Back"),
        "common__action__back_to_home":
            MessageLookupByLibrary.simpleMessage("Back to home"),
        "common__action__call_phone_number":
            MessageLookupByLibrary.simpleMessage("Call"),
        "common__action__cancel":
            MessageLookupByLibrary.simpleMessage("Cancel"),
        "common__action__cancel_s":
            MessageLookupByLibrary.simpleMessage("Cancel"),
        "common__action__close": MessageLookupByLibrary.simpleMessage("Close"),
        "common__action__collapse":
            MessageLookupByLibrary.simpleMessage("Collapse"),
        "common__action__confirm":
            MessageLookupByLibrary.simpleMessage("Confirm"),
        "common__action__delete":
            MessageLookupByLibrary.simpleMessage("Delete"),
        "common__action__dismiss":
            MessageLookupByLibrary.simpleMessage("Dismiss"),
        "common__action__done": MessageLookupByLibrary.simpleMessage("Done"),
        "common__action__download":
            MessageLookupByLibrary.simpleMessage("Download"),
        "common__action__hide": MessageLookupByLibrary.simpleMessage("Hide"),
        "common__action__later": MessageLookupByLibrary.simpleMessage("Later"),
        "common__action__report":
            MessageLookupByLibrary.simpleMessage("Report"),
        "common__action__skip": MessageLookupByLibrary.simpleMessage("Aborted"),
        "common__action__view": MessageLookupByLibrary.simpleMessage("View"),
        "common__action__view_detail":
            MessageLookupByLibrary.simpleMessage("View detail"),
        "common__action__view_more":
            MessageLookupByLibrary.simpleMessage("View more"),
        "common__age": MessageLookupByLibrary.simpleMessage("Age"),
        "common__all": MessageLookupByLibrary.simpleMessage("All"),
        "common__app_info__name":
            MessageLookupByLibrary.simpleMessage("App Name"),
        "common__app_info__version":
            MessageLookupByLibrary.simpleMessage("App Version"),
        "common__detail": MessageLookupByLibrary.simpleMessage("Detail"),
        "common__erorr__invalid_format_or_value":
            MessageLookupByLibrary.simpleMessage("Invalid format or value"),
        "common__erorr__invalid_information":
            MessageLookupByLibrary.simpleMessage("Invalid information"),
        "common__erorr__validation_new_password":
            MessageLookupByLibrary.simpleMessage("Invalid new password"),
        "common__erorr__validation_password":
            MessageLookupByLibrary.simpleMessage("Invalid password"),
        "common__erorr__validation_phone_number":
            MessageLookupByLibrary.simpleMessage("Invalid phone number"),
        "common__error___validation_date_time":
            MessageLookupByLibrary.simpleMessage("Invalid date and time"),
        "common__error__bad_certificate":
            MessageLookupByLibrary.simpleMessage("Bad certificate exception"),
        "common__error__can_not_connect_to_host":
            MessageLookupByLibrary.simpleMessage(
                "Can not connect to this host"),
        "common__error__can_not_open":
            MessageLookupByLibrary.simpleMessage("Can not open"),
        "common__error__cancellation_exception":
            MessageLookupByLibrary.simpleMessage("Cancellation exception"),
        "common__error__fixing": MessageLookupByLibrary.simpleMessage(
            "An error has occurred, we are fixing"),
        "common__error__no_internet_connectivity":
            MessageLookupByLibrary.simpleMessage("No internet connectivity"),
        "common__error__no_internet_exception":
            MessageLookupByLibrary.simpleMessage("No internet exception"),
        "common__error__parse_exception":
            MessageLookupByLibrary.simpleMessage("Parse value unsuccessfully"),
        "common__error__something_wrong": MessageLookupByLibrary.simpleMessage(
            "Something went wrong, please try again later!"),
        "common__error__token_expired":
            MessageLookupByLibrary.simpleMessage("Token expired"),
        "common__error__unknown_exception": m3,
        "common__error__validation_email_or_phone_number":
            MessageLookupByLibrary.simpleMessage(
                "Invalid email or phone number"),
        "common__error__validation_otp_code":
            MessageLookupByLibrary.simpleMessage("Invalid OTP code"),
        "common__error__validtion__confirm_passord_empty":
            MessageLookupByLibrary.simpleMessage("Confirm password is empty"),
        "common__error__validtion__confirm_passord_miss_match":
            MessageLookupByLibrary.simpleMessage(
                "Confirm password does not match"),
        "common__error__validtion_empty_email":
            MessageLookupByLibrary.simpleMessage("Email is empty"),
        "common__error__validtion_required_field":
            MessageLookupByLibrary.simpleMessage("Required"),
        "common__learning": MessageLookupByLibrary.simpleMessage("Learning"),
        "common__message__empty":
            MessageLookupByLibrary.simpleMessage("(Empty)"),
        "common__month__april": MessageLookupByLibrary.simpleMessage("April"),
        "common__month__april_s": MessageLookupByLibrary.simpleMessage("Apr"),
        "common__month__august": MessageLookupByLibrary.simpleMessage("August"),
        "common__month__august_s": MessageLookupByLibrary.simpleMessage("Aug"),
        "common__month__november":
            MessageLookupByLibrary.simpleMessage("November"),
        "common__month__november_s":
            MessageLookupByLibrary.simpleMessage("Nov"),
        "common__now": MessageLookupByLibrary.simpleMessage("Now"),
        "common__present": MessageLookupByLibrary.simpleMessage("Now"),
        "common__required_field":
            MessageLookupByLibrary.simpleMessage("Required"),
        "common__schedule__afternoon":
            MessageLookupByLibrary.simpleMessage("Afternoon"),
        "common__settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "common__text_hint__no_content":
            MessageLookupByLibrary.simpleMessage("(Content not updated)"),
        "common__text_hint__no_title":
            MessageLookupByLibrary.simpleMessage("(Title not updated)"),
        "common__warning_text_required_minium_characters": m4,
        "common_error": MessageLookupByLibrary.simpleMessage("Error"),
        "common_error_enter_pasword":
            MessageLookupByLibrary.simpleMessage("Please enter password"),
        "common_error_enter_pasword_minLength":
            MessageLookupByLibrary.simpleMessage(
                "Please enter password with more than 8 characters"),
        "common_error_enter_pasword_simple":
            MessageLookupByLibrary.simpleMessage(
                "Password should not be easy to guess"),
        "common_goal": MessageLookupByLibrary.simpleMessage("Common goal"),
        "common_password_pattern": MessageLookupByLibrary.simpleMessage(
            "Password must be at least 8 characters long (including numbers, uppercase letters, lowercase letters, and symbols)."),
        "common_url_cant_launched":
            MessageLookupByLibrary.simpleMessage("Can\'t open invalid link"),
        "compare_the_results":
            MessageLookupByLibrary.simpleMessage("Compare the results"),
        "complete": MessageLookupByLibrary.simpleMessage("Complete"),
        "completed": MessageLookupByLibrary.simpleMessage("Completed"),
        "completed_roadmap": MessageLookupByLibrary.simpleMessage("Completed"),
        "confirm__confirm_details__header_text__confirm_detail":
            MessageLookupByLibrary.simpleMessage("Confirm detail"),
        "confirm__confirm_details__label_info__teacher_join_at":
            MessageLookupByLibrary.simpleMessage("Teacher joined at"),
        "confirm__confirm_details__label_info__teacher_leave_at":
            MessageLookupByLibrary.simpleMessage("Teacher left at"),
        "confirm__confirm_details__label_text_check_again":
            MessageLookupByLibrary.simpleMessage(
                "Dear students, please check the information and confirm for <0> if the information is correct."),
        "confirm__confirm_details__label_text_confirm_request":
            MessageLookupByLibrary.simpleMessage(
                "Request confirmation of session"),
        "confirm__confirm_details__status_text__auto_confirmed":
            MessageLookupByLibrary.simpleMessage(
                "This session has been automatically confirmed"),
        "confirm__confirm_details__status_text__confirmed":
            MessageLookupByLibrary.simpleMessage(
                "This lesson has been confirmed"),
        "confirm__confirm_details__status_text__no_confirmed":
            MessageLookupByLibrary.simpleMessage(
                "This session has not been confirmed"),
        "confirm__dialog_issue__confirm_duration_text":
            MessageLookupByLibrary.simpleMessage("Teaching duration (minutes)"),
        "confirm__dialog_issue__confirm_duration_text_greater":
            MessageLookupByLibrary.simpleMessage(
                "The duration must be greater than 1 minute"),
        "confirm__dialog_issue__confirm_duration_text_less":
            MessageLookupByLibrary.simpleMessage(
                "The duration must be less than the session duration"),
        "confirm__dialog_issue__label_text":
            MessageLookupByLibrary.simpleMessage(
                "What happened in the session?"),
        "confirm__dialog_issue__text_option_1":
            MessageLookupByLibrary.simpleMessage("Teacher absent/not teaching"),
        "confirm__dialog_issue__text_option_2":
            MessageLookupByLibrary.simpleMessage("Teach less hours"),
        "confirm_information":
            MessageLookupByLibrary.simpleMessage("Confirm information"),
        "confirm_password":
            MessageLookupByLibrary.simpleMessage("Enter password again"),
        "confirm_session":
            MessageLookupByLibrary.simpleMessage("Confirm session"),
        "confirm_voucher":
            MessageLookupByLibrary.simpleMessage("Confirm voucher"),
        "confirm_your_request":
            MessageLookupByLibrary.simpleMessage("Confirm your request"),
        "confirmed": MessageLookupByLibrary.simpleMessage("Confirmed"),
        "confirmed_unit":
            MessageLookupByLibrary.simpleMessage("Confirmed unit"),
        "connection_error":
            MessageLookupByLibrary.simpleMessage("Connection errors"),
        "connection_lost":
            MessageLookupByLibrary.simpleMessage("No network connection"),
        "contact_antoree":
            MessageLookupByLibrary.simpleMessage("Contact Antoree"),
        "contract__details__creator":
            MessageLookupByLibrary.simpleMessage("Creator"),
        "contract__details__customer_service_name":
            MessageLookupByLibrary.simpleMessage("Customer"),
        "contract__details__duration":
            MessageLookupByLibrary.simpleMessage("duration"),
        "contract__details__total_price":
            MessageLookupByLibrary.simpleMessage("Toal price"),
        "contract__error_text__contracts_empty":
            MessageLookupByLibrary.simpleMessage("Contracts is empty"),
        "contract__header_text__contracts":
            MessageLookupByLibrary.simpleMessage("Contracts"),
        "counterAppBarTitle":
            MessageLookupByLibrary.simpleMessage("counterAppBarTitle"),
        "course": MessageLookupByLibrary.simpleMessage("Course"),
        "course__course_detail__duration_learned":
            MessageLookupByLibrary.simpleMessage("Learned"),
        "course__status__text__cancelled":
            MessageLookupByLibrary.simpleMessage("Cancelled"),
        "course__status__text__closed":
            MessageLookupByLibrary.simpleMessage("Closed"),
        "course__status__text__delay":
            MessageLookupByLibrary.simpleMessage("Delay"),
        "course__status__text__opening":
            MessageLookupByLibrary.simpleMessage("Opening"),
        "course__status__text__pending":
            MessageLookupByLibrary.simpleMessage("Pending"),
        "course_absence_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Selected courses will be suspended until student start studying again"),
        "course_absence_notice":
            MessageLookupByLibrary.simpleMessage("Báo nghỉ khóa học"),
        "course_detail": MessageLookupByLibrary.simpleMessage("Course detail"),
        "course_duration":
            MessageLookupByLibrary.simpleMessage("Course duration"),
        "course_id": MessageLookupByLibrary.simpleMessage("Course ID"),
        "course_id_s": MessageLookupByLibrary.simpleMessage("Course ID"),
        "course_name": MessageLookupByLibrary.simpleMessage("Course name"),
        "course_not_found":
            MessageLookupByLibrary.simpleMessage("Course not found"),
        "course_register":
            MessageLookupByLibrary.simpleMessage("Register course"),
        "course_s": MessageLookupByLibrary.simpleMessage("Course"),
        "course_session":
            MessageLookupByLibrary.simpleMessage("Course Sessions"),
        "course_short": MessageLookupByLibrary.simpleMessage("Course"),
        "create_an_account":
            MessageLookupByLibrary.simpleMessage("Create new account"),
        "create_profile":
            MessageLookupByLibrary.simpleMessage("Create a profile"),
        "create_session_feedback":
            MessageLookupByLibrary.simpleMessage("Create session feedback"),
        "create_test_result":
            MessageLookupByLibrary.simpleMessage("Create test result"),
        "current_password":
            MessageLookupByLibrary.simpleMessage("Current password"),
        "current_password_wrong":
            MessageLookupByLibrary.simpleMessage("Current password is wrong"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Dark Theme"),
        "day": MessageLookupByLibrary.simpleMessage("day"),
        "day_started": MessageLookupByLibrary.simpleMessage("Day started"),
        "days": MessageLookupByLibrary.simpleMessage("days"),
        "days_relative": m5,
        "december": MessageLookupByLibrary.simpleMessage("December"),
        "december_s": MessageLookupByLibrary.simpleMessage("Dec"),
        "degree": MessageLookupByLibrary.simpleMessage("Degree"),
        "delay": MessageLookupByLibrary.simpleMessage("Delay"),
        "delete_account":
            MessageLookupByLibrary.simpleMessage("Delete account"),
        "delete_warning": m6,
        "detail_of_course": m7,
        "detail_reason": MessageLookupByLibrary.simpleMessage("Detail reason"),
        "dialog__message__absence_confirm_message":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to report an absence for this session?"),
        "dialog__message__absence_success_message":
            MessageLookupByLibrary.simpleMessage(
                "Your absence request has been recorded by Antoree"),
        "dialog__message__absence_success_title":
            MessageLookupByLibrary.simpleMessage(
                "Absence request successfully"),
        "dialog__message__coming_soon_message":
            MessageLookupByLibrary.simpleMessage("Comming soon"),
        "dialog__message__confirm_unit_no_message":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to confirm that the teacher was absent or didn’t teach the lesson?"),
        "dialog__message__confirm_unit_report_message":
            MessageLookupByLibrary.simpleMessage(
                "This report will be sent to Antoree for processing. Do you guarantee that the information you are providing is true?"),
        "dialog__message__confirm_unit_successful_title":
            MessageLookupByLibrary.simpleMessage(
                "Confirm session successfully"),
        "dialog__message__confirm_unit_yes_message":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to confirm this session?"),
        "dialog__message__exit_message": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to close the application?"),
        "dialog__message__feature_coming_soon_message":
            MessageLookupByLibrary.simpleMessage("Feature comming soon"),
        "dialog__message__feedback_note": MessageLookupByLibrary.simpleMessage(
            "Your review will help improve the effectiveness of the next session by up to <0>."),
        "dialog__message__feedback_public_note":
            MessageLookupByLibrary.simpleMessage(
                "Your feedback will be visible to others"),
        "dialog__message__feedback_success_message":
            MessageLookupByLibrary.simpleMessage(
                "Your review of the session has been recorded by Antoree"),
        "dialog__message__feedback_success_title":
            MessageLookupByLibrary.simpleMessage("Review successfully"),
        "dialog__message__logout_message": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to logout?"),
        "dialog__message__logout_title":
            MessageLookupByLibrary.simpleMessage("Logout"),
        "dialog__message__reject_unit_successful_title":
            MessageLookupByLibrary.simpleMessage("Reject session successfully"),
        "dialog__message__session_feedback_message":
            MessageLookupByLibrary.simpleMessage(
                "You’ve just finished a class. Please share your feedback to help improve the quality of the class."),
        "dialog__message__token_expired_message":
            MessageLookupByLibrary.simpleMessage(
                "Your session expired, please login again"),
        "dialog__message__token_expired_title":
            MessageLookupByLibrary.simpleMessage("Your session has expired"),
        "dialog__message__tracking_message": MessageLookupByLibrary.simpleMessage(
            "We collect your actions to bring more personalized experience and services. For instance, we can base on your behavior in app to analyze why you got stuck, hence improve the application performance"),
        "dialog__message__tracking_title":
            MessageLookupByLibrary.simpleMessage("Dear user"),
        "dialog__message__warning_title":
            MessageLookupByLibrary.simpleMessage("Warning"),
        "do_not_have": MessageLookupByLibrary.simpleMessage("Do not have"),
        "dont_have_an_account":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "email_or_phone_number": MessageLookupByLibrary.simpleMessage("Email"),
        "empty": MessageLookupByLibrary.simpleMessage("Empty"),
        "empty_absence_history":
            MessageLookupByLibrary.simpleMessage("Empty absence history"),
        "empty_course": MessageLookupByLibrary.simpleMessage("No course"),
        "empty_title":
            MessageLookupByLibrary.simpleMessage("Something is missing"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "english_for_adult":
            MessageLookupByLibrary.simpleMessage("English for Adults"),
        "english_for_chid_student":
            MessageLookupByLibrary.simpleMessage("English for child, student"),
        "english_for_kid":
            MessageLookupByLibrary.simpleMessage("English for Kids"),
        "enter_otp_sent_via": MessageLookupByLibrary.simpleMessage(
            "The OTP sent via your <0> phone number <1>"),
        "enter_sent_otp": MessageLookupByLibrary.simpleMessage("Enter the OTP"),
        "enter_value": m8,
        "enter_your_new_password":
            MessageLookupByLibrary.simpleMessage("Enter your new password"),
        "enter_your_registered_phone_number":
            MessageLookupByLibrary.simpleMessage(
                "Enter your registered phone number"),
        "evaluate_session":
            MessageLookupByLibrary.simpleMessage("Evaluate session"),
        "evening": MessageLookupByLibrary.simpleMessage("Evening"),
        "explore_page": MessageLookupByLibrary.simpleMessage("Explore"),
        "extend": MessageLookupByLibrary.simpleMessage("Extend"),
        "extend_course": MessageLookupByLibrary.simpleMessage("Extend course"),
        "extend_duration_learn":
            MessageLookupByLibrary.simpleMessage("Extend duration learn"),
        "february": MessageLookupByLibrary.simpleMessage("February"),
        "february_s": MessageLookupByLibrary.simpleMessage("Feb"),
        "feedback__session_feedback__button_text":
            MessageLookupByLibrary.simpleMessage("Feed back"),
        "feedback__session_feedback__header_text_confirm":
            MessageLookupByLibrary.simpleMessage("Confirm feedback"),
        "feedback__session_feedback__header_text_session_feedback":
            MessageLookupByLibrary.simpleMessage("Session feedback"),
        "feedback__session_feedback__label_attitude_text":
            MessageLookupByLibrary.simpleMessage("Attitude"),
        "feedback__session_feedback__label_content_text":
            MessageLookupByLibrary.simpleMessage("Content"),
        "feedback__session_feedback__label_happy_text":
            MessageLookupByLibrary.simpleMessage("Satisfaction level"),
        "feedback__session_feedback__label_method_text":
            MessageLookupByLibrary.simpleMessage("Teaching method"),
        "feedback__session_feedback__rate_1":
            MessageLookupByLibrary.simpleMessage("Bad"),
        "feedback__session_feedback__rate_2":
            MessageLookupByLibrary.simpleMessage("Not satisfied"),
        "feedback__session_feedback__rate_3":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "feedback__session_feedback__rate_4":
            MessageLookupByLibrary.simpleMessage("Satisfied"),
        "feedback__session_feedback__rate_5":
            MessageLookupByLibrary.simpleMessage("Excellent"),
        "feedback__session_feedback__text_feedback_hint":
            MessageLookupByLibrary.simpleMessage(
                "Please share your feelings about this session and teacher."),
        "feedback__session_feedback__text_feedback_hint_1":
            MessageLookupByLibrary.simpleMessage(
                "Please feedback more than 20 characters and less than 256 characters"),
        "female": MessageLookupByLibrary.simpleMessage("Female"),
        "few_seconds_ago":
            MessageLookupByLibrary.simpleMessage("few seconds ago"),
        "field_of_work": MessageLookupByLibrary.simpleMessage("Field of work"),
        "find_favorite_teacher":
            MessageLookupByLibrary.simpleMessage("Find your favorite teacher"),
        "find_new_teacher_here":
            MessageLookupByLibrary.simpleMessage("Find new teacher here"),
        "five_recent_results":
            MessageLookupByLibrary.simpleMessage("5 recent results"),
        "fixed_flexible":
            MessageLookupByLibrary.simpleMessage("Fixed and flexible"),
        "flexible": MessageLookupByLibrary.simpleMessage("Flexible"),
        "flexibleV2": MessageLookupByLibrary.simpleMessage("Flexible"),
        "for_someone": MessageLookupByLibrary.simpleMessage("For "),
        "for_vietnamese_teachers":
            MessageLookupByLibrary.simpleMessage("For Vietnamese teachers"),
        "foreign": MessageLookupByLibrary.simpleMessage("Foreign"),
        "foreign_teacher":
            MessageLookupByLibrary.simpleMessage("Foreign Teachers"),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "free": MessageLookupByLibrary.simpleMessage("Free"),
        "fri": MessageLookupByLibrary.simpleMessage("Fri"),
        "friday": MessageLookupByLibrary.simpleMessage("Friday"),
        "friday_s": MessageLookupByLibrary.simpleMessage("FR"),
        "friend_referral":
            MessageLookupByLibrary.simpleMessage("Friend referral"),
        "full": MessageLookupByLibrary.simpleMessage("Full"),
        "full_name": MessageLookupByLibrary.simpleMessage("Full name"),
        "gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "get_now": MessageLookupByLibrary.simpleMessage("Get now"),
        "goal": MessageLookupByLibrary.simpleMessage("Goal"),
        "grammar": MessageLookupByLibrary.simpleMessage("Grammar"),
        "group_of_English_teachers":
            MessageLookupByLibrary.simpleMessage("Group of English teachers"),
        "happening": MessageLookupByLibrary.simpleMessage("Happening"),
        "hello": MessageLookupByLibrary.simpleMessage("Hello"),
        "hello_someone": m9,
        "help_center": MessageLookupByLibrary.simpleMessage("Help center"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "home_work": MessageLookupByLibrary.simpleMessage("Homework"),
        "homework": MessageLookupByLibrary.simpleMessage("Homework"),
        "homework_content":
            MessageLookupByLibrary.simpleMessage("Homework content"),
        "homework_summary":
            MessageLookupByLibrary.simpleMessage("Homework Summary"),
        "hotline_bottom_sheet_work_time": MessageLookupByLibrary.simpleMessage(
            "8:00 - 17:00 from Monday to Friday (Vietnam timezone)\nContact Zalo: every day of the week"),
        "hour": MessageLookupByLibrary.simpleMessage("hour"),
        "hours": MessageLookupByLibrary.simpleMessage("hours"),
        "hours_relative": m10,
        "i_got_it": MessageLookupByLibrary.simpleMessage("I got it"),
        "implementing_feature":
            MessageLookupByLibrary.simpleMessage("Implementing feature"),
        "implementing_feature_detail": MessageLookupByLibrary.simpleMessage(
            "We are working on this feature. Coming soon"),
        "infomation": MessageLookupByLibrary.simpleMessage("Infomation"),
        "information_support":
            MessageLookupByLibrary.simpleMessage("Infomation & Support"),
        "internet_connection_lost":
            MessageLookupByLibrary.simpleMessage("Internet connection lost"),
        "january": MessageLookupByLibrary.simpleMessage("January"),
        "january_s": MessageLookupByLibrary.simpleMessage("Jan"),
        "japanese": MessageLookupByLibrary.simpleMessage("Japanese"),
        "join": MessageLookupByLibrary.simpleMessage("Join"),
        "july": MessageLookupByLibrary.simpleMessage("July"),
        "july_s": MessageLookupByLibrary.simpleMessage("Jul"),
        "june": MessageLookupByLibrary.simpleMessage("June"),
        "june_s": MessageLookupByLibrary.simpleMessage("Jun"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastest_reviews":
            MessageLookupByLibrary.simpleMessage("Latest reviews"),
        "late_night": MessageLookupByLibrary.simpleMessage("Late night"),
        "later": MessageLookupByLibrary.simpleMessage("Later"),
        "learn": MessageLookupByLibrary.simpleMessage("Learn"),
        "learn_english_online_1_on_1":
            MessageLookupByLibrary.simpleMessage("Learn english online 1 on 1"),
        "learning__feature_label__absence_history":
            MessageLookupByLibrary.simpleMessage("Absence history"),
        "learning__feature_label__certificates":
            MessageLookupByLibrary.simpleMessage("Certificates"),
        "learning__feature_label__confirm":
            MessageLookupByLibrary.simpleMessage("Confirm"),
        "learning__feature_label__penalty_history":
            MessageLookupByLibrary.simpleMessage("Penalty History"),
        "learning__feature_label__results":
            MessageLookupByLibrary.simpleMessage("Results"),
        "learning__feature_label__videos":
            MessageLookupByLibrary.simpleMessage("Unit videos"),
        "learning__header_text__learning":
            MessageLookupByLibrary.simpleMessage("Learning"),
        "learning__label_text__maybe_you_interest":
            MessageLookupByLibrary.simpleMessage("You might be interested"),
        "learning_topic":
            MessageLookupByLibrary.simpleMessage("Learning topic"),
        "learnt": MessageLookupByLibrary.simpleMessage("Learnt"),
        "lession": MessageLookupByLibrary.simpleMessage("Lession"),
        "lesson": MessageLookupByLibrary.simpleMessage("Lesson"),
        "let_antoree_help_you":
            MessageLookupByLibrary.simpleMessage("Hay để Antoree giúp bạn nào"),
        "let_go": MessageLookupByLibrary.simpleMessage("Let\'s go"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("Light Theme"),
        "list_videos": MessageLookupByLibrary.simpleMessage("List videos"),
        "log_out": MessageLookupByLibrary.simpleMessage("Logout"),
        "log_out_confirmation": MessageLookupByLibrary.simpleMessage(
            "Do you want to logout from this device?"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "login__error_message":
            MessageLookupByLibrary.simpleMessage("Login error"),
        "login_failed": MessageLookupByLibrary.simpleMessage("Login failed"),
        "login_to_continue":
            MessageLookupByLibrary.simpleMessage("Login to continue"),
        "main_course": MessageLookupByLibrary.simpleMessage("Main Course"),
        "makeup_confirm_notification": MessageLookupByLibrary.simpleMessage(
            "Giáo viên <0> đã chấp nhận buổi học bù, buổi học sẽ diễn ra vào lúc <1>, <2>"),
        "makeup_notification": MessageLookupByLibrary.simpleMessage(
            "<0> đã xin nghỉ buổi học <1> và có mong muốn đổi lịch. Bấm vào đây để chọn lịch học bù"),
        "makeup_reject_notification": MessageLookupByLibrary.simpleMessage(
            "Giáo viên <0> đã KHÔNG chọn được lịch nào phù hợp với yêu cầu học bù của bạn"),
        "makeup_submitted_notification": MessageLookupByLibrary.simpleMessage(
            "Teacher <0> has requested a leave of absence for class <1> and would like to reschedule. Click here to select a class schedule."),
        "male": MessageLookupByLibrary.simpleMessage("Male"),
        "march": MessageLookupByLibrary.simpleMessage("March"),
        "march_s": MessageLookupByLibrary.simpleMessage("Mar"),
        "may": MessageLookupByLibrary.simpleMessage("May"),
        "may_s": MessageLookupByLibrary.simpleMessage("May"),
        "menu__button_label__account_info":
            MessageLookupByLibrary.simpleMessage("Account infomation"),
        "menu__button_label__certificates":
            MessageLookupByLibrary.simpleMessage("Certificates"),
        "menu__button_label__change_password":
            MessageLookupByLibrary.simpleMessage("Change password"),
        "menu__button_label__contracts":
            MessageLookupByLibrary.simpleMessage("Contracts"),
        "menu__button_label__course_policy":
            MessageLookupByLibrary.simpleMessage("Course policy"),
        "menu__button_label__personal_information":
            MessageLookupByLibrary.simpleMessage("Personal information"),
        "menu__button_label__session_policy":
            MessageLookupByLibrary.simpleMessage("Session policy"),
        "menu__button_text__logout":
            MessageLookupByLibrary.simpleMessage("Log out"),
        "menu__header_text__your_profile":
            MessageLookupByLibrary.simpleMessage("Your profile"),
        "menu__label_text__account":
            MessageLookupByLibrary.simpleMessage("Account"),
        "menu__label_text__information_support":
            MessageLookupByLibrary.simpleMessage("Information & Support"),
        "message": MessageLookupByLibrary.simpleMessage("Message"),
        "message_customer_care":
            MessageLookupByLibrary.simpleMessage("Message customer care"),
        "minute": MessageLookupByLibrary.simpleMessage("minute"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "minutes_relative": m11,
        "mon": MessageLookupByLibrary.simpleMessage("Mon"),
        "monday": MessageLookupByLibrary.simpleMessage("Monday"),
        "monday_s": MessageLookupByLibrary.simpleMessage("MO"),
        "month": MessageLookupByLibrary.simpleMessage("month"),
        "months": MessageLookupByLibrary.simpleMessage("months"),
        "more": MessageLookupByLibrary.simpleMessage("More"),
        "morning": MessageLookupByLibrary.simpleMessage("Morning"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "nationality": MessageLookupByLibrary.simpleMessage("Nationality"),
        "new_password": MessageLookupByLibrary.simpleMessage("New password"),
        "new_s": MessageLookupByLibrary.simpleMessage("New"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "next_session": MessageLookupByLibrary.simpleMessage("Next session"),
        "next_sessionV2": MessageLookupByLibrary.simpleMessage("Next session"),
        "next_session_in":
            MessageLookupByLibrary.simpleMessage("The next session in "),
        "night": MessageLookupByLibrary.simpleMessage("Night"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "no_available_teacher": MessageLookupByLibrary.simpleMessage(
            "There is no available teacher"),
        "no_available_teacher_prompt": MessageLookupByLibrary.simpleMessage(
            "There is no available teacher at your selected time. Please choose another one"),
        "no_confirm": MessageLookupByLibrary.simpleMessage("No confirm"),
        "no_course":
            MessageLookupByLibrary.simpleMessage("No courses available"),
        "no_goal_yet": MessageLookupByLibrary.simpleMessage("No goal yet"),
        "no_information":
            MessageLookupByLibrary.simpleMessage("No information"),
        "no_notification":
            MessageLookupByLibrary.simpleMessage("No notifications"),
        "no_review_from_teacher":
            MessageLookupByLibrary.simpleMessage("There is no review"),
        "no_session":
            MessageLookupByLibrary.simpleMessage("No sessions available"),
        "not_confirmed_unit":
            MessageLookupByLibrary.simpleMessage("Not confirmed unit"),
        "not_found": MessageLookupByLibrary.simpleMessage(
            "Chúng tôi không thể tìm thấy gì ở đây cả"),
        "not_happened": MessageLookupByLibrary.simpleMessage("Not happened"),
        "note_for_student":
            MessageLookupByLibrary.simpleMessage("Note for student"),
        "notes": MessageLookupByLibrary.simpleMessage("Notes"),
        "notification": MessageLookupByLibrary.simpleMessage("Notification"),
        "notification__bonus_unit_title": m12,
        "notification__error_notification_empty":
            MessageLookupByLibrary.simpleMessage(
                "There are no notifications yet"),
        "notification__filter_text__all":
            MessageLookupByLibrary.simpleMessage("All"),
        "notification__filter_text__unread":
            MessageLookupByLibrary.simpleMessage("Unread"),
        "notification__header_text__notifications":
            MessageLookupByLibrary.simpleMessage("Notifications"),
        "notification__remind_class__15": MessageLookupByLibrary.simpleMessage(
            "Get ready, your class starts in 15 minutes"),
        "notification__remind_class__4": m13,
        "notification__session_start_at":
            MessageLookupByLibrary.simpleMessage("Takes place at"),
        "october": MessageLookupByLibrary.simpleMessage("October"),
        "october_s": MessageLookupByLibrary.simpleMessage("Oct"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "old_password": MessageLookupByLibrary.simpleMessage("Old password"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "opening": MessageLookupByLibrary.simpleMessage("Opening"),
        "optional": MessageLookupByLibrary.simpleMessage("Optional"),
        "or": MessageLookupByLibrary.simpleMessage("or"),
        "origin_duration":
            MessageLookupByLibrary.simpleMessage("Origin duration"),
        "other": MessageLookupByLibrary.simpleMessage("Other"),
        "other_error": MessageLookupByLibrary.simpleMessage("Other error"),
        "other_reason": MessageLookupByLibrary.simpleMessage("Other reason"),
        "otp_not_send": MessageLookupByLibrary.simpleMessage("OTP not send?"),
        "otp_page_button_resend":
            MessageLookupByLibrary.simpleMessage("Resend"),
        "otp_page_button_send_to_sms":
            MessageLookupByLibrary.simpleMessage("Send via SMS"),
        "overview": MessageLookupByLibrary.simpleMessage("Overview"),
        "page": MessageLookupByLibrary.simpleMessage("Page"),
        "passed_bonus_duration":
            MessageLookupByLibrary.simpleMessage("Passed bonus duration"),
        "passed_duration":
            MessageLookupByLibrary.simpleMessage("Passed duration"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordsAreNotMatch":
            MessageLookupByLibrary.simpleMessage("passwords are not match"),
        "penalty__dialog_details_title":
            MessageLookupByLibrary.simpleMessage("Penalty detail"),
        "penalty__dialog_remove_success": MessageLookupByLibrary.simpleMessage(
            "Penalty successfully removed"),
        "penalty__error_text__empty":
            MessageLookupByLibrary.simpleMessage("No penalty history"),
        "penalty__header_text__penalty_history":
            MessageLookupByLibrary.simpleMessage("Penalty History"),
        "penalty__penalty_detail__note": m14,
        "penalty__penalty_detail__remove_penalty":
            MessageLookupByLibrary.simpleMessage("Remove penalty"),
        "penalty__penalty_detail__remove_penalty_confirm_message":
            MessageLookupByLibrary.simpleMessage(
                "You will lose the course duration that was previously added!\nAre you sure you want to lift the penalty for this teacher?"),
        "pending": MessageLookupByLibrary.simpleMessage("Pending"),
        "person_absence_at": m15,
        "personal_infomation":
            MessageLookupByLibrary.simpleMessage("Personal infomation"),
        "personal_preference":
            MessageLookupByLibrary.simpleMessage("Personal preference"),
        "personals_goal":
            MessageLookupByLibrary.simpleMessage("Personal\'s goal"),
        "phone_number": MessageLookupByLibrary.simpleMessage("Phone number"),
        "pick": MessageLookupByLibrary.simpleMessage("pick"),
        "picked": MessageLookupByLibrary.simpleMessage("Picked"),
        "please_enter": m16,
        "please_enter_signed_phone_number":
            MessageLookupByLibrary.simpleMessage(
                "Please enter your registered phone number"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "profile__header_text__my_profile":
            MessageLookupByLibrary.simpleMessage("My profile"),
        "promo_gift": MessageLookupByLibrary.simpleMessage("Ưu đãi đổi quà"),
        "quick_join": MessageLookupByLibrary.simpleMessage("Quick join"),
        "reason": MessageLookupByLibrary.simpleMessage("Reason"),
        "receive": MessageLookupByLibrary.simpleMessage("Receive"),
        "referral": MessageLookupByLibrary.simpleMessage("Referral"),
        "refuse_confirm":
            MessageLookupByLibrary.simpleMessage("Refuse confirm"),
        "regions": MessageLookupByLibrary.simpleMessage("Regions"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "register_duration":
            MessageLookupByLibrary.simpleMessage("Register duration"),
        "register_new_course":
            MessageLookupByLibrary.simpleMessage("Register new course"),
        "reject": MessageLookupByLibrary.simpleMessage("Reject"),
        "rejected": MessageLookupByLibrary.simpleMessage("Rejected"),
        "relative_days_next": m17,
        "relative_hours_next": m18,
        "relative_minutes_next": m19,
        "remain_hours": MessageLookupByLibrary.simpleMessage("Remain hours"),
        "remain_hours_after_confirm":
            MessageLookupByLibrary.simpleMessage("Remain hours after confirm"),
        "remaining_duration":
            MessageLookupByLibrary.simpleMessage("Remaining duration"),
        "reminder_open_course_absence_at": MessageLookupByLibrary.simpleMessage(
            "Your course will be reopened after <0>"),
        "remove_seleted":
            MessageLookupByLibrary.simpleMessage("Remove selected"),
        "request": MessageLookupByLibrary.simpleMessage("Request"),
        "request_cancelled_prematurely": MessageLookupByLibrary.simpleMessage(
            "Request cancelled prematurely"),
        "request_confirm_session":
            MessageLookupByLibrary.simpleMessage("Yêu cầu xác nhận buổi học"),
        "request_failed": MessageLookupByLibrary.simpleMessage(
            "Request failed, please try again in a few minutes"),
        "request_for_extension":
            MessageLookupByLibrary.simpleMessage("Request for extension"),
        "required": MessageLookupByLibrary.simpleMessage("Required"),
        "resend_otp_after":
            MessageLookupByLibrary.simpleMessage("Resend OTP code after "),
        "reset_account_password":
            MessageLookupByLibrary.simpleMessage("Reset account password"),
        "result": MessageLookupByLibrary.simpleMessage("Result"),
        "results__error__emtpy_evaluate_result":
            MessageLookupByLibrary.simpleMessage(
                "You have no periodic reviews yet."),
        "results__error__emtpy_test_result":
            MessageLookupByLibrary.simpleMessage(
                "You have no test results yet."),
        "results__header_text__results":
            MessageLookupByLibrary.simpleMessage("Results"),
        "results__tab_name__evaluate":
            MessageLookupByLibrary.simpleMessage("Periodic evaluation"),
        "results__tab_name__test":
            MessageLookupByLibrary.simpleMessage("Periodic Test"),
        "results__text_info__evaluate_at":
            MessageLookupByLibrary.simpleMessage("Review at"),
        "results__text_info__test_at":
            MessageLookupByLibrary.simpleMessage("Test at"),
        "results__text_info__test_level":
            MessageLookupByLibrary.simpleMessage("Level"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "review": MessageLookupByLibrary.simpleMessage("Review"),
        "roadmap": MessageLookupByLibrary.simpleMessage("Roadmap"),
        "sat": MessageLookupByLibrary.simpleMessage("Sat"),
        "saturday": MessageLookupByLibrary.simpleMessage("Saturday"),
        "saturday_s": MessageLookupByLibrary.simpleMessage("SA"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "schedule": MessageLookupByLibrary.simpleMessage("Schedule"),
        "schedule__error__no_happened_session":
            MessageLookupByLibrary.simpleMessage(
                "You currently have no completed sessions."),
        "schedule__error__no_up_comming_session":
            MessageLookupByLibrary.simpleMessage(
                "You currently have no upcoming sessions"),
        "schedule__header_text__happened":
            MessageLookupByLibrary.simpleMessage("Happended"),
        "schedule__header_text__schedule":
            MessageLookupByLibrary.simpleMessage("Schedule"),
        "schedule__header_text__up_comming":
            MessageLookupByLibrary.simpleMessage("Upcoming"),
        "schedule__schedule_item_button_text__absence":
            MessageLookupByLibrary.simpleMessage("Absence"),
        "scheduled_session":
            MessageLookupByLibrary.simpleMessage("Scheduled session"),
        "score": MessageLookupByLibrary.simpleMessage("Score"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "see_more": MessageLookupByLibrary.simpleMessage("See more"),
        "select_all": MessageLookupByLibrary.simpleMessage("Select all"),
        "selected": MessageLookupByLibrary.simpleMessage("Selected"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "send_feedback": MessageLookupByLibrary.simpleMessage("Send feedback"),
        "send_it": MessageLookupByLibrary.simpleMessage("Send"),
        "send_notify": MessageLookupByLibrary.simpleMessage("Send"),
        "sent_a_request_to_confirm_the_session_at":
            MessageLookupByLibrary.simpleMessage(
                "<0> sent a request to confirm the session at <1>"),
        "september": MessageLookupByLibrary.simpleMessage("September"),
        "september_s": MessageLookupByLibrary.simpleMessage("Sep"),
        "serrver_error": MessageLookupByLibrary.simpleMessage("Serrver error"),
        "service_feedback":
            MessageLookupByLibrary.simpleMessage("Service feedback"),
        "session": MessageLookupByLibrary.simpleMessage("Session"),
        "session_absence": MessageLookupByLibrary.simpleMessage("Session"),
        "session_absence_notice":
            MessageLookupByLibrary.simpleMessage("Session absence notice"),
        "session_content":
            MessageLookupByLibrary.simpleMessage("Session content"),
        "session_not_found":
            MessageLookupByLibrary.simpleMessage("Session not found"),
        "session_rating":
            MessageLookupByLibrary.simpleMessage("Session rating"),
        "session_short": MessageLookupByLibrary.simpleMessage("session"),
        "session_video": MessageLookupByLibrary.simpleMessage("Video session"),
        "setting_page_label_language":
            MessageLookupByLibrary.simpleMessage("Language"),
        "setting_page_title_app_bar":
            MessageLookupByLibrary.simpleMessage("Settings"),
        "settting_page_label_dark_mode":
            MessageLookupByLibrary.simpleMessage("Dark mode"),
        "show": MessageLookupByLibrary.simpleMessage("Show"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Sign In"),
        "sign_out": MessageLookupByLibrary.simpleMessage("Sign Out"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "sort_by": MessageLookupByLibrary.simpleMessage("Sort by"),
        "spread_antoree":
            MessageLookupByLibrary.simpleMessage("Spread Antoree"),
        "study": MessageLookupByLibrary.simpleMessage("Study"),
        "submit_home_work":
            MessageLookupByLibrary.simpleMessage("Submit homework"),
        "submit_home_work_short":
            MessageLookupByLibrary.simpleMessage("Submit homework"),
        "submitted_a_leave_absence_at": MessageLookupByLibrary.simpleMessage(
            "<0> has submitted a leave absence at <1>"),
        "sun": MessageLookupByLibrary.simpleMessage("Sun"),
        "sunday": MessageLookupByLibrary.simpleMessage("Sunday"),
        "sunday_s": MessageLookupByLibrary.simpleMessage("SU"),
        "support": MessageLookupByLibrary.simpleMessage("Support"),
        "take_place_on": MessageLookupByLibrary.simpleMessage("Take place on"),
        "teacher": MessageLookupByLibrary.simpleMessage("Teacher"),
        "teacher_attitude":
            MessageLookupByLibrary.simpleMessage("Teacher attitude"),
        "teacher_name": MessageLookupByLibrary.simpleMessage("Teacher\'s name"),
        "teaching_method":
            MessageLookupByLibrary.simpleMessage("Teaching method"),
        "terms_of_service":
            MessageLookupByLibrary.simpleMessage("Terms of service"),
        "test": MessageLookupByLibrary.simpleMessage("Test"),
        "test_result": MessageLookupByLibrary.simpleMessage("Test result"),
        "thu": MessageLookupByLibrary.simpleMessage("Thu"),
        "thursday": MessageLookupByLibrary.simpleMessage("Thursday"),
        "thursday_s": MessageLookupByLibrary.simpleMessage("TH"),
        "times": MessageLookupByLibrary.simpleMessage("Times"),
        "to_continue": MessageLookupByLibrary.simpleMessage("Continue"),
        "to_pay": MessageLookupByLibrary.simpleMessage("To pay"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "today_course": MessageLookupByLibrary.simpleMessage("Today course"),
        "today_session": MessageLookupByLibrary.simpleMessage("Today session"),
        "today_sessions":
            MessageLookupByLibrary.simpleMessage("Today sesssions"),
        "tomorrow": MessageLookupByLibrary.simpleMessage("Tomorrow"),
        "top_favorite_teachers":
            MessageLookupByLibrary.simpleMessage("Top favorite teachers"),
        "topic": MessageLookupByLibrary.simpleMessage("Topic"),
        "total_duration":
            MessageLookupByLibrary.simpleMessage("Total duration"),
        "total_score": MessageLookupByLibrary.simpleMessage("Total score"),
        "transfer": MessageLookupByLibrary.simpleMessage("Transfer"),
        "trial": MessageLookupByLibrary.simpleMessage("Trial"),
        "try_again": MessageLookupByLibrary.simpleMessage("Try again later"),
        "tue": MessageLookupByLibrary.simpleMessage("Tue"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Tuesday"),
        "tuesday_s": MessageLookupByLibrary.simpleMessage("TU"),
        "tuition_levels":
            MessageLookupByLibrary.simpleMessage("The tuition levels"),
        "unconfirmed_unit":
            MessageLookupByLibrary.simpleMessage("Unconfirmed unit"),
        "unit": MessageLookupByLibrary.simpleMessage("Unit"),
        "unit__unit_detail_status_absence":
            MessageLookupByLibrary.simpleMessage(
                "The session has been cancelled."),
        "unit_detail": MessageLookupByLibrary.simpleMessage("Unit detail"),
        "unit_topic": MessageLookupByLibrary.simpleMessage("Unit topic"),
        "units__filter_button_text_happened":
            MessageLookupByLibrary.simpleMessage("Completed"),
        "units__filter_button_text_new":
            MessageLookupByLibrary.simpleMessage("New"),
        "units__filter_button_text_not_happened":
            MessageLookupByLibrary.simpleMessage("Canceled"),
        "units__filter_button_text_waiting":
            MessageLookupByLibrary.simpleMessage("Waiting"),
        "units__filter_text_happened":
            MessageLookupByLibrary.simpleMessage("Completed"),
        "units__filter_text_new": MessageLookupByLibrary.simpleMessage("New"),
        "units__filter_text_not_happened":
            MessageLookupByLibrary.simpleMessage("Canceled"),
        "units__filter_text_waiting":
            MessageLookupByLibrary.simpleMessage("Waiting"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "unknown_error": MessageLookupByLibrary.simpleMessage("Unknown error"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "updated": MessageLookupByLibrary.simpleMessage("Updated"),
        "updating": MessageLookupByLibrary.simpleMessage("Updating"),
        "verify_otp_code":
            MessageLookupByLibrary.simpleMessage("Verify OTP code"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnamese"),
        "view_all_teacher":
            MessageLookupByLibrary.simpleMessage("View All Teacher"),
        "view_history": MessageLookupByLibrary.simpleMessage("View history"),
        "vocabulary": MessageLookupByLibrary.simpleMessage("Vocabulary"),
        "voice": MessageLookupByLibrary.simpleMessage("Voice"),
        "waiting_confirm":
            MessageLookupByLibrary.simpleMessage("Waiting confirm"),
        "wed": MessageLookupByLibrary.simpleMessage("Wed"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Wednesday"),
        "wednesday_s": MessageLookupByLibrary.simpleMessage("WE"),
        "wrong_username_password": MessageLookupByLibrary.simpleMessage(
            "You enter wrong Email/Numberphone or password!"),
        "year": MessageLookupByLibrary.simpleMessage("year"),
        "years": MessageLookupByLibrary.simpleMessage("years"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "you_have_learnt":
            MessageLookupByLibrary.simpleMessage("You have learned"),
        "you_have_no_course":
            MessageLookupByLibrary.simpleMessage("You don\'t have any course"),
        "you_to_take_notes":
            MessageLookupByLibrary.simpleMessage("You to take notes"),
        "your_feedback": MessageLookupByLibrary.simpleMessage("Your feedback"),
        "your_goal": MessageLookupByLibrary.simpleMessage("Your goal")
      };
}
