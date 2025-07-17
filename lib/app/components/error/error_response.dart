import 'package:edtech/app/components/error/error_widget.dart';
import 'package:edtech/app/exception_handler/exception_image_mapper.dart';
import 'package:edtech/app/exception_handler/exception_message_mapper.dart';
import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:flutter/material.dart';

class AppExceptionWidget extends StatelessWidget {
  const AppExceptionWidget({
    required this.appException,
    this.exceptionMessageMapper = const ExceptionMessageMapper(),
    this.exceptionImageMapper = const ExceptionImageMapper(),
    super.key,
  });

  final AppException appException;

  final ExceptionMessageMapper exceptionMessageMapper;
  final ExceptionImageMapper exceptionImageMapper;

  @override
  Widget build(BuildContext context) {
    final message = exceptionMessageMapper.map(appException);
    final image = exceptionImageMapper.map(appException);

    return CustomErrorWidget(
      message: message,
      crossAxisAlignment: CrossAxisAlignment.center,
      textAlign: TextAlign.center,
      child: Image.asset(
        image,
        width: Dimens.d250.responsive(),
        height: Dimens.d250.responsive(),
      ),
    );
  }
}
