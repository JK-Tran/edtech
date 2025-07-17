//import 'package:edtech/app/features/auth/domain/entity/student_info.dart';
import 'package:edtech/app/features/auth/domain/entity/user.dart';
import 'package:edtech/core/model/shared_enum.dart';

abstract class AuthRepository {
  Future<bool> get isLoggedIn;

  Future<bool> get subUserExist;

  Future<void> login({
    required String email,
    required String password,
  });

  Future<User?> loginWithGoogle({
    required String idToken,
    required String email,
    required String name,
    String? photoUrl,
  });

  Future<void> logout();

  Future<void> resetPassword({
    required String token,
    required String password,
  });

  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  });

  Future<String?> forgotPassword(String phoneNumber, [int sendMethod]);

  Future<void> submitOTPCode({
    required String token,
    required String otpCode,
  });

  Future<void> resendOTPCode(String token, [int sendMethod]);

  Future<void> register({
    required String username,
    required String email,
    required String password,
    required Gender gender,
  });

  User getCurrentUser();

  Future<void> clearCurrentUserData();

  Future<User?> getMe();

  Future<User> getStudentInfo();

  Future<bool> saveCurrentUser(User user);

  Future<void> saveAccessToken(String? accessToken);

  Future<String?> getAccessToken();
}
