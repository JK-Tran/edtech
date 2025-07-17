import 'package:edtech/core/model/shared_enum.dart';
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/resource/theme/data/size_data.dart';
import 'package:edtech/core/resource/theme/data/theme_data_container.dart';
import 'package:edtech/core/resource/theme/data/typography_data.dart';
import 'package:edtech/core/resource/theme/provider/theme_resolver.dart';
import 'package:edtech/core/utils/app_text.dart';
import 'package:edtech/resources/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class AppUtils {
  const AppUtils._();

  static String mapGenderToText(Gender gender) {
    switch (gender) {
      case Gender.male:
        return S.current.male;
      case Gender.female:
        return S.current.female;
      case Gender.other:
      case Gender.unknown:
        return S.current.other;
    }
  }

  static String mapLanguageToText(LanguageCode language) {
    switch (language) {
      case LanguageCode.en:
        return S.current.english;
      case LanguageCode.vi:
        return S.current.vietnamese;
    }
  }

  static String numToCurrency(
    double num, [
    int? decimalDigits,
    String symbols = 'VND',
  ]) {
    final formatter = NumberFormat.currency(
      locale: 'vi',
      decimalDigits: decimalDigits,
      symbol: symbols,
    );
    return formatter.format(num);
  }
}

extension AppExtentions on BuildContext {
  GoRouter get goRouter => GoRouter.of(this);

  S get l10n => S.of(this);

  ThemeDataContainer get themeResolver => ThemeResolver.of(this);

  SizeData get sizes => themeResolver.sizes;

  ThemeEdgeInsetsSizeData get insets => sizes.insets;

  ThemeGapSizeData get gaps => sizes.gaps;

  ColorPaletteData get colors => themeResolver.colors;

  TypographyData get typo => themeResolver.typographys;

  bool get isVietLang => Localizations.localeOf(this).languageCode == 'vi';
}

extension AppTextExtention on AppText {
  AppText get titleExtra => copyWith(fontSize: 22);
  AppText get labelExtra => copyWith(fontSize: 16);
  AppText get weight500 => copyWith(fontWeight: FontWeight.w500);
  AppText get weight600 => copyWith(fontWeight: FontWeight.w600);
  AppText get bold => copyWith(fontWeight: FontWeight.w700);
  AppText get leftAlign => copyWith(textAlign: TextAlign.left);
  AppText get centerAlign => copyWith(textAlign: TextAlign.center);
  AppText get rightAlign => copyWith(textAlign: TextAlign.right);
  AppText get overFlow => copyWith(textOverflow: TextOverflow.ellipsis);
}

extension TextStyleExtension on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get responsive => copyWith(fontSize: fontSize?.responsive());
  TextStyle get weight500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get weight600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get overFlow => copyWith(overflow: TextOverflow.ellipsis);
  TextStyle customColor(Color? color) => copyWith(color: color);
}
