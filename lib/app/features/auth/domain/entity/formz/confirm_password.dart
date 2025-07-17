import 'package:edtech/core/utils/formz.dart';
import 'package:edtech/core/utils/string_utils.dart';
import 'package:edtech/resources/generated/l10n.dart';

enum ConfirmPasswordValidationError { mismatch, empty }

class ConfirmPassword
    extends FormzInput<String, ConfirmPasswordValidationError> {
  const ConfirmPassword.pure({this.password = ''}) : super.pure('');
  const ConfirmPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  final String password;

  @override
  ConfirmPasswordValidationError? validator(String? value) {
    if (StringUtils.isNullOrBlank(value)) {
      return ConfirmPasswordValidationError.empty;
    }
    return password == value ? null : ConfirmPasswordValidationError.mismatch;
  }
}

extension ExConfirmPassword on ConfirmPasswordValidationError {
  String? get text {
    switch (this) {
      case ConfirmPasswordValidationError.mismatch:
        return S.current.common__error__validtion__confirm_passord_miss_match;
      case ConfirmPasswordValidationError.empty:
        return S.current.common__error__validtion__confirm_passord_empty;
    }
  }
}
