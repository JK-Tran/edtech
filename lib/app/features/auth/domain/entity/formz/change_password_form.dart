import 'package:edtech/core/utils/formz.dart';

import 'confirm_password.dart';
import 'new_password.dart';
import 'password.dart';

class ChangePasswordForm with FormzMixin {
  const ChangePasswordForm({
    this.oldPassword = const Password.pure(),
    this.newPassword = const NewPassword.pure(),
    this.confirmPassword = const ConfirmPassword.pure(),
  });

  final Password oldPassword;
  final NewPassword newPassword;
  final ConfirmPassword confirmPassword;

  ChangePasswordForm copyWith({
    Password? oldPassword,
    NewPassword? newPassword,
    ConfirmPassword? confirmPassword,
  }) {
    return ChangePasswordForm(
      oldPassword: oldPassword ?? this.oldPassword,
      newPassword: newPassword ?? this.newPassword,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }

  @override
  List<FormzInput<dynamic, dynamic>> get inputs =>
      [oldPassword, newPassword, confirmPassword];
}
