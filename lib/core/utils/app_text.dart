import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

enum StyleEnum { d0, d1, d2, h0, h1, h2, t0, t1, t2, l0, l1, l2, b0, b1, b2 }

class AppText extends StatelessWidget {
  factory AppText.h2(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.h2,
    );
  }

  factory AppText.b0(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.b0,
    );
  }

  factory AppText.t1(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.t1,
    );
  }

  factory AppText.t2(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.t2,
    );
  }

  factory AppText.d1(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.d1,
    );
  }
  factory AppText.h0(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.h0,
    );
  }

  factory AppText.l1(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.l1,
    );
  }

  factory AppText.h1(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.h1,
    );
  }

  factory AppText.l2(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.l2,
    );
  }
  factory AppText.t0(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.t0,
    );
  }

  factory AppText.b1(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.b1,
    );
  }

  factory AppText.d0(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.d0,
    );
  }
  factory AppText.b2(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.b2,
    );
  }

  factory AppText.l0(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.l0,
    );
  }
  factory AppText.d2(
    String text, {
    Key? key,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return AppText._(
      text,
      key: key,
      color: color,
      textDecoration: textDecoration,
      maxLines: maxLines,
      textAlign: textAlign,
      textOverflow: textOverflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      enumStyle: StyleEnum.d2,
    );
  }
  const AppText._(
    this.text, {
    required this.enumStyle,
    this.color,
    this.textDecoration,
    this.maxLines,
    this.textAlign,
    this.textOverflow,
    this.fontWeight,
    this.fontSize,
    super.key,
  });

  final String text;
  final StyleEnum enumStyle;
  final Color? color;
  final TextDecoration? textDecoration;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final double? fontSize;

  static TextStyle? styleOf(BuildContext context, StyleEnum enumStyle) {
    switch (enumStyle) {
      case StyleEnum.d0:
        return context.typo.displayLarge;
      case StyleEnum.d1:
        return context.typo.displayMedium;
      case StyleEnum.d2:
        return context.typo.displaySmall;
      case StyleEnum.h0:
        return context.typo.headlineLarge;
      case StyleEnum.h1:
        return context.typo.headlineMedium;
      case StyleEnum.h2:
        return context.typo.headlineSmall;
      case StyleEnum.t0:
        return context.typo.titleLarge;
      case StyleEnum.t1:
        return context.typo.titleMedium;
      case StyleEnum.t2:
        return context.typo.titleSmall;
      case StyleEnum.l0:
        return context.typo.labelLarge;
      case StyleEnum.l1:
        return context.typo.labelMedium;
      case StyleEnum.l2:
        return context.typo.labelSmall;
      case StyleEnum.b0:
        return context.typo.bodyLarge;
      case StyleEnum.b1:
        return context.typo.bodyMedium;
      case StyleEnum.b2:
        return context.typo.bodySmall;
    }
  }

  AppText copyWith({
    TextStyle? style,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    double? fontSize,
  }) =>
      AppText._(
        text,
        enumStyle: enumStyle,
        textAlign: textAlign ?? this.textAlign,
        color: color ?? this.color,
        fontWeight: fontWeight ?? this.fontWeight,
        maxLines: maxLines ?? this.maxLines,
        textDecoration: textDecoration ?? this.textDecoration,
        textOverflow: textOverflow ?? this.textOverflow,
        fontSize: fontSize ?? this.fontSize,
      );

  @override
  Widget build(BuildContext context) {
    final style = styleOf(context, enumStyle);

    return Text(
      text,
      style: style!.copyWith(
        color: color,
        decoration: textDecoration,
        decorationColor: color,
        fontWeight: fontWeight,
        fontSize: fontSize?.responsive(),
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
      textHeightBehavior: const TextHeightBehavior(
        leadingDistribution: TextLeadingDistribution.even,
      ),
    );
  }
}
