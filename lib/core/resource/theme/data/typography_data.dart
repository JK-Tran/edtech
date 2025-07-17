// ignore_for_file: avoid_hard_coded_text_style, missing_calling_responsive
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'typography_data.freezed.dart';

// const String _montserrat = 'Montserrat';
const String _lexend = 'Lexend';

@freezed
abstract class TypographyData with _$TypographyData {
  const factory TypographyData({
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d58,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle displayLarge,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d46,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle displayMedium,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d36,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle displaySmall,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d32,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle headlineLarge,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d28,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle headlineMedium,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d24,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle headlineSmall,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d18,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle titleLarge,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d16,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle titleMedium,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle titleSmall,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle labelLarge,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d12,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle labelMedium,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d10,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle labelSmall,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d16,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle bodyLarge,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle bodyMedium,
    @Default(
      TextStyle(
        fontFamily: _lexend,
        fontSize: Dimens.d12,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    )
    TextStyle bodySmall,
  }) = _TypographyData;

  static TextTheme textTheme(TypographyData typographyData) {
    return TextTheme(
      displayLarge: typographyData.displayLarge,
      displayMedium: typographyData.displayMedium,
      displaySmall: typographyData.displaySmall,
      headlineLarge: typographyData.headlineLarge,
      headlineMedium: typographyData.headlineMedium,
      headlineSmall: typographyData.headlineSmall,
      titleLarge: typographyData.titleLarge,
      titleMedium: typographyData.titleMedium,
      titleSmall: typographyData.titleSmall,
      labelLarge: typographyData.labelLarge,
      labelMedium: typographyData.labelMedium,
      labelSmall: typographyData.labelSmall,
      bodyLarge: typographyData.bodyLarge,
      bodyMedium: typographyData.bodyMedium,
      bodySmall: typographyData.bodySmall,
    );
  }
}
