import 'package:dartx/dartx.dart';
import 'package:edtech/core/utils/formz.dart';
import 'package:edtech/resources/generated/l10n.dart';

import '../../../../../../core/utils/validation_utils.dart';

enum NewPasswordValidationError {
  invalid,
  minLength,
  empty,
  simple,
}

class NewPassword extends FormzInput<String, NewPasswordValidationError> {
  const NewPassword.pure([super.value = '']) : super.pure();
  const NewPassword.dirty([super.value = '']) : super.dirty();

  @override
  NewPasswordValidationError? validator(String? value) {
    if (value.isNullOrBlank) {
      return NewPasswordValidationError.empty;
    }
    // if (value!.length < 6) {
    //   return NewPasswordValidationError.minLength;
    // }
    // if (!ValidationUtils.isValidSimplePassword(value)) {
    //   return NewPasswordValidationError.simple;
    // }
    if (!ValidationUtils.isValidNewPassword(value!)) {
      return NewPasswordValidationError.invalid;
    }
    return null;
  }
}

extension ExNewPasswordValidation on NewPasswordValidationError {
  String get text {
    switch (this) {
      case NewPasswordValidationError.minLength:
        return S.current.common_error_enter_pasword_minLength;
      case NewPasswordValidationError.simple:
        return S.current.common_error_enter_pasword_simple;
      case NewPasswordValidationError.invalid:
        return S.current.common_password_pattern;
      case NewPasswordValidationError.empty:
        return S.current.common_error_enter_pasword;
    }
  }
}
