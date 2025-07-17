import 'package:edtech/core/utils/formz.dart';

import 'confirm_password.dart';
import 'new_password.dart';

class ForgotPasswordForm with FormzMixin {
  const ForgotPasswordForm({
    this.newPassword = const NewPassword.pure(),
    this.confirmPassword = const ConfirmPassword.pure(),
  });

  final NewPassword newPassword;
  final ConfirmPassword confirmPassword;

  ForgotPasswordForm copyWith({
    NewPassword? newPassword,
    ConfirmPassword? confirmPassword,
  }) {
    return ForgotPasswordForm(
      newPassword: newPassword ?? this.newPassword,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }

  @override
  List<FormzInput<dynamic, dynamic>> get inputs =>
      [newPassword, confirmPassword];
}
