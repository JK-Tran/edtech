import 'package:edtech/core/exception/base/app_exception.dart';

// ignore: one_member_abstracts
abstract class ExceptionMapper<T extends AppException> {
  T map(Object? exception);
}
