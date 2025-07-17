import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/exception/remote/remote_exception.dart';
import 'package:edtech/core/exception/validation/validation_exception.dart';
import 'package:edtech/resources/generated/l10n.dart';

class ExceptionMessageMapper {
  const ExceptionMessageMapper();

  String map(AppException appException) {
    return switch (appException.appExceptionType) {
      AppExceptionType.remote => switch (
            (appException as RemoteException).kind) {
          RemoteExceptionKind.badCertificate =>
            S.current.common__error__unknown_exception('UE-01'),
          RemoteExceptionKind.noInternet =>
            S.current.common__error__no_internet_connectivity,
          RemoteExceptionKind.network =>
            S.current.common__error__can_not_connect_to_host,
          RemoteExceptionKind.serverDefined =>
            '${S.current.common__error__something_wrong}\n\n'
                '${S.current.common__detail}: '
                '${appException.generalServerMessage ?? appException.serverError?.generalMessage ?? S.current.common__error__unknown_exception('UE-02')}',
          RemoteExceptionKind.serverUndefined =>
            appException.generalServerMessage ??
                S.current.common__error__unknown_exception('UE-03'),
          RemoteExceptionKind.timeout =>
            S.current.common___error__timeout_exception,
          RemoteExceptionKind.cancellation =>
            S.current.common__error__unknown_exception('UE-04'),
          RemoteExceptionKind.refreshTokenFailed =>
            S.current.common__error__token_expired,
          RemoteExceptionKind.sessionExpired =>
            S.current.common__error__token_expired,
          RemoteExceptionKind.unknown =>
            S.current.common__error__unknown_exception('UE-05'),
          RemoteExceptionKind.decodeError =>
            S.current.common__error__unknown_exception('UE-06'),
          RemoteExceptionKind.unauthorized => S.current.wrong_username_password,
        },
      AppExceptionType.parse =>
        S.current.common__erorr__invalid_format_or_value,
      AppExceptionType.remoteConfig =>
        S.current.common__error__unknown_exception('UE-100'),
      AppExceptionType.uncaught =>
        S.current.common__error__unknown_exception('UE-00'),
      AppExceptionType.validation => switch (
            (appException as ValidationException).kind) {
          ValidationExceptionKind.emptyField =>
            S.current.common__error__validtion_required_field,
          ValidationExceptionKind.emptyEmail =>
            S.current.common__error__validtion_empty_email,
          ValidationExceptionKind.invalidEmail =>
            S.current.common__error__validation_email_or_phone_number,
          ValidationExceptionKind.invalidPassword =>
            S.current.common__erorr__validation_password,
          ValidationExceptionKind.invalidNewPassword =>
            S.current.common__erorr__validation_new_password,
          ValidationExceptionKind.invalidUserName =>
            S.current.common__error__validation_email_or_phone_number,
          ValidationExceptionKind.invalidPhoneNumber =>
            S.current.common__erorr__validation_phone_number,
          ValidationExceptionKind.invalidDateTime =>
            S.current.common__error___validation_date_time,
          ValidationExceptionKind.passwordsAreNotMatch =>
            S.current.passwordsAreNotMatch,
          ValidationExceptionKind.invalidOtpCode =>
            S.current.common__error__validation_otp_code,
          ValidationExceptionKind.invalidInfomation =>
            S.current.common__erorr__invalid_information,
        },
    };
  }
}
