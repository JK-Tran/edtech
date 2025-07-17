import 'package:edtech/app/components/error/error_widget.dart';
import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:flutter/material.dart';

class ExceptionWidgetHandler {
  const ExceptionWidgetHandler();

  Widget handleErrorWidget(
    AppException appException,
    String commonExceptionMessage,
    String commonExceptionImage,
  ) {
    return CustomErrorWidget(
      message: commonExceptionMessage,
      child: Image.asset(commonExceptionImage),
    );
  }
}
