import 'package:edtech/core/model/shared_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default(0) int id,
    @Default('') String email,
    @Default(false) bool isLock,
    @Default('') String loginType,
    @Default('') String password,
    // User details
    @Default('') String fullName,
    @Default('') String lastName,
    @Default('') String firstName,
    @Default(Gender.unknown) Gender gender,
    @Default('') String address,
    DateTime? birthday,
    @Default('') String phoneNumber,
    @Default('') String phoneCode,
    @Default('') String oldPhoneNumber,
    @Default(0) int countryId,
    @Default('') String bio,
    @Default('') String experience,
    // Roles
    //@Default(<int>[]) List<int> roleIds,
  }) = _User;
  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Role IDs
  static const roleStudent = 1;
  static const roleTeacher = 2;
  static const roleAdmin = 3;

  /// Permissions
  static const mobileTeacher = 'be-teacher';
  static const mobileTrial = 'mobile-trial';
  static const mobileTester = 'mobile-tester';
}

// /// Extension cho User để thêm các helper methods
// extension UserExtension on User {
//   bool get isStudent => roleIds.contains(User.roleStudent);
//   bool get isTeacher => roleIds.contains(User.roleTeacher);
//   bool get isAdmin => roleIds.contains(User.roleAdmin);
// }

@freezed
class Role with _$Role {
  const factory Role({
    @Default(0) int id,
    @Default('') String name,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
