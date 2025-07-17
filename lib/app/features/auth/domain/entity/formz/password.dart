import 'package:dartx/dartx.dart';
import 'package:edtech/core/utils/formz.dart';
import 'package:edtech/resources/generated/l10n.dart';

enum PasswordValidationError { minLength, empty }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure([super.value = '']) : super.pure();
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String? value) {
    if (value.isNullOrBlank) {
      return PasswordValidationError.empty;
    }
    if (value!.length < 6) {
      return PasswordValidationError.minLength;
    }
    return null;
  }
}

extension ExPasswordValidation on PasswordValidationError {
  String get text {
    switch (this) {
      case PasswordValidationError.minLength:
        return S.current.common_error_enter_pasword_minLength;
      case PasswordValidationError.empty:
        return S.current.common_error_enter_pasword;
    }
  }
}
