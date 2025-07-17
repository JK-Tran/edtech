// ignore_for_file: avoid_hardcoded_colors
import 'package:edtech/core/resource/theme/provider/theme_resolver.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_palette_data.freezed.dart';

@freezed
abstract class ColorPaletteData with _$ColorPaletteData {
  const factory ColorPaletteData({
    @Default(AppColors.primary) Color primary,
    @Default(AppColors.primary10) Color primary10,
    @Default(AppColors.primary20) Color primary20,
    @Default(AppColors.primary30) Color primary30,
    @Default(AppColors.primary40) Color primary40,
    @Default(AppColors.primary50) Color primary50,
    @Default(AppColors.primary60) Color primary60,
    @Default(AppColors.primary70) Color primary70,
    @Default(AppColors.primary80) Color primary80,
    @Default(AppColors.primary90) Color primary90,
    @Default(AppColors.primary95) Color primary95,
    @Default(AppColors.primary99) Color primary99,
    @Default(AppColors.primary100) Color primary100,
    @Default(AppColors.secondary10) Color secondary10,
    @Default(AppColors.secondary20) Color secondary20,
    @Default(AppColors.secondary30) Color secondary30,
    @Default(AppColors.secondary40) Color secondary40,
    @Default(AppColors.secondary50) Color secondary50,
    @Default(AppColors.secondary60) Color secondary60,
    @Default(AppColors.secondary70) Color secondary70,
    @Default(AppColors.secondary80) Color secondary80,
    @Default(AppColors.secondary90) Color secondary90,
    @Default(AppColors.secondary95) Color secondary95,
    @Default(AppColors.secondary99) Color secondary99,
    @Default(AppColors.secondary100) Color secondary100,
    @Default(AppColors.tertiary10) Color tertiary10,
    @Default(AppColors.tertiary20) Color tertiary20,
    @Default(AppColors.tertiary30) Color tertiary30,
    @Default(AppColors.tertiary40) Color tertiary40,
    @Default(AppColors.tertiary50) Color tertiary50,
    @Default(AppColors.tertiary60) Color tertiary60,
    @Default(AppColors.tertiary70) Color tertiary70,
    @Default(AppColors.tertiary80) Color tertiary80,
    @Default(AppColors.tertiary90) Color tertiary90,
    @Default(AppColors.tertiary95) Color tertiary95,
    @Default(AppColors.tertiary99) Color tertiary99,
    @Default(AppColors.tertiary100) Color tertiary100,
    @Default(AppColors.error10) Color error10,
    @Default(AppColors.error20) Color error20,
    @Default(AppColors.error30) Color error30,
    @Default(AppColors.error40) Color error40,
    @Default(AppColors.error50) Color error50,
    @Default(AppColors.error60) Color error60,
    @Default(AppColors.error70) Color error70,
    @Default(AppColors.error80) Color error80,
    @Default(AppColors.error90) Color error90,
    @Default(AppColors.error95) Color error95,
    @Default(AppColors.error99) Color error99,
    @Default(AppColors.error100) Color error100,
    @Default(AppColors.neuTral10) Color neuTral10,
    @Default(AppColors.neuTral20) Color neuTral20,
    @Default(AppColors.neuTral30) Color neuTral30,
    @Default(AppColors.neuTral40) Color neuTral40,
    @Default(AppColors.neuTral50) Color neuTral50,
    @Default(AppColors.neuTral60) Color neuTral60,
    @Default(AppColors.neuTral70) Color neuTral70,
    @Default(AppColors.neuTral80) Color neuTral80,
    @Default(AppColors.neuTral90) Color neuTral90,
    @Default(AppColors.neuTral95) Color neuTral95,
    @Default(AppColors.neuTral99) Color neuTral99,
    @Default(AppColors.neuTral100) Color neuTral100,
    @Default(AppColors.neuTralVariant10) Color neuTralVariant10,
    @Default(AppColors.neuTralVariant20) Color neuTralVariant20,
    @Default(AppColors.neuTralVariant30) Color neuTralVariant30,
    @Default(AppColors.neuTralVariant40) Color neuTralVariant40,
    @Default(AppColors.neuTralVariant50) Color neuTralVariant50,
    @Default(AppColors.neuTralVariant60) Color neuTralVariant60,
    @Default(AppColors.neuTralVariant70) Color neuTralVariant70,
    @Default(AppColors.neuTralVariant80) Color neuTralVariant80,
    @Default(AppColors.neuTralVariant90) Color neuTralVariant90,
    @Default(AppColors.neuTralVariant95) Color neuTralVariant95,
    @Default(AppColors.neuTralVariant99) Color neuTralVariant99,
    @Default(AppColors.neuTralVariant100) Color neuTralVariant100,
    @Default(AppColors.yellow) Color coreWarning,
    @Default(AppColors.transparent) Color transparent,
  }) = _ColorPaletteData;

  static late ColorPaletteData current;

  static ColorPaletteData of(BuildContext context) {
    final appColor = ThemeResolver.of(context).colors;
    return current = appColor;
  }

  static ColorScheme lightColorScheme(ColorPaletteData colors) {
    return ColorScheme(
      brightness: Brightness.light,
      primary: colors.primary40,
      onPrimary: colors.primary100,
      primaryContainer: colors.primary90,
      onPrimaryContainer: colors.primary10,
      secondary: colors.secondary40,
      onSecondary: colors.secondary100,
      secondaryContainer: colors.secondary90,
      onSecondaryContainer: colors.secondary10,
      error: colors.error40,
      onError: colors.error100,
      errorContainer: colors.error90,
      onErrorContainer: colors.error10,
      tertiary: colors.tertiary40,
      onTertiary: colors.tertiary100,
      tertiaryContainer: colors.tertiary90,
      onTertiaryContainer: colors.tertiary10,
      surface: colors.neuTral99,
      onSurface: colors.neuTral10,
      surfaceContainerHighest: colors.neuTralVariant90,
      onSurfaceVariant: colors.neuTralVariant30,
      outline: colors.neuTralVariant50,
    );
  }

  static ColorScheme darkColorScheme(ColorPaletteData colors) {
    return ColorScheme(
      brightness: Brightness.dark,
      primary: colors.primary80,
      onPrimary: colors.primary20,
      primaryContainer: colors.primary30,
      onPrimaryContainer: colors.primary90,
      secondary: colors.secondary80,
      onSecondary: colors.secondary20,
      secondaryContainer: colors.secondary30,
      onSecondaryContainer: colors.secondary90,
      error: colors.error80,
      onError: colors.error20,
      errorContainer: colors.error30,
      onErrorContainer: colors.error90,
      tertiary: colors.tertiary80,
      onTertiary: colors.tertiary20,
      tertiaryContainer: colors.tertiary30,
      onTertiaryContainer: colors.tertiary90,
      surface: colors.neuTral10,
      onSurface: colors.neuTral80,
      surfaceContainerHighest: colors.neuTralVariant30,
      onSurfaceVariant: colors.neuTralVariant80,
      outline: colors.neuTralVariant60,
    );
  }
}

class AppColors {
  const AppColors._();
  static const Color primary = Color(0xFF10B981);
  static const Color primary10 = Color(0xFF052E13);
  static const Color primary20 = Color(0xFF0A5C27);
  static const Color primary30 = Color(0xFF0F8A3A);
  static const Color primary40 = Color(0xFF14B24B);
  static const Color primary50 = Color(0xFF19DE5E);
  static const Color primary60 = Color(0xFF3DE979);
  static const Color primary70 = Color(0xFF6FEF9C);
  static const Color primary80 = Color(0xFFA2F5BF);
  static const Color primary90 = Color(0xFFCDF9DC);
  static const Color primary95 = Color(0xFFE9FDF0);
  static const Color primary99 = Color(0xFFF8FEFA);
  static const Color primary100 = Color(0xFFFFFFFF);

  static const Color secondary10 = Color(0xFF0E170D);
  static const Color secondary20 = Color(0xFF1B2E19);
  static const Color secondary30 = Color(0xFF294426);
  static const Color secondary40 = Color(0xFF345830);
  static const Color secondary50 = Color(0xFF89BB84);
  static const Color secondary60 = Color(0xFF61A35A);
  static const Color secondary70 = Color(0xFF89BB84);
  static const Color secondary80 = Color(0xFFB3D3AF);
  static const Color secondary90 = Color(0xFFD6E7D4);
  static const Color secondary95 = Color(0xFFEDF5ED);
  static const Color secondary99 = Color(0xFFF9FCF9);
  static const Color secondary100 = Color(0xFFFFFFFF);

  static const Color tertiary10 = Color(0xFF07111F);
  static const Color tertiary20 = Color(0xFF0E213E);
  static const Color tertiary30 = Color(0xFF14325D);
  static const Color tertiary40 = Color(0xFF1B4079);
  static const Color tertiary50 = Color(0xFF2559A7);
  static const Color tertiary60 = Color(0xFF3172D2);
  static const Color tertiary70 = Color(0xFF6796DE);
  static const Color tertiary80 = Color(0xFF9CBBE9);
  static const Color tertiary90 = Color(0xFFCADAF3);
  static const Color tertiary95 = Color(0xFFE8EFFA);
  static const Color tertiary99 = Color(0xFFF7FAFD);
  static const Color tertiary100 = Color(0xFFFFFFFF);

  static const Color error10 = Color(0xFF410001);
  static const Color error20 = Color(0xFF680003);
  static const Color error30 = Color(0xFF930006);
  static const Color error40 = Color(0xFFBA1B1B);
  static const Color error50 = Color(0xFFDD3730);
  static const Color error60 = Color(0xFFFF5449);
  static const Color error70 = Color(0xFFFF897A);
  static const Color error80 = Color(0xFFFFB4A9);
  static const Color error90 = Color(0xFFFFDAD4);
  static const Color error95 = Color(0xFFFFEDE9);
  static const Color error99 = Color(0xFFFCFCFC);
  static const Color error100 = Color(0xFFFFFFFF);

  static const Color neuTral10 = Color(0xFF141414);
  static const Color neuTral20 = Color(0xFF292928);
  static const Color neuTral30 = Color(0xFF3D3D3C);
  static const Color neuTral40 = Color(0xFF50514F);
  static const Color neuTral50 = Color(0xFF6A6B69);
  static const Color neuTral60 = Color(0xFF858684);
  static const Color neuTral70 = Color(0xFFA5A6A4);
  static const Color neuTral80 = Color(0xFFC4C5C4);
  static const Color neuTral90 = Color(0xFFDFE0DF);
  static const Color neuTral95 = Color(0xFFF1F2F1);
  static const Color neuTral99 = Color(0xFFFAFBFA);
  static const Color neuTral100 = Color(0xFFFFFFFF);

  static const Color neuTralVariant10 = Color(0xFF151611);
  static const Color neuTralVariant20 = Color(0xFF2B2C23);
  static const Color neuTralVariant30 = Color(0xFF404234);
  static const Color neuTralVariant40 = Color(0xFF545643);
  static const Color neuTralVariant50 = Color(0xFF72745B);
  static const Color neuTralVariant60 = Color(0xFF8F9275);
  static const Color neuTralVariant70 = Color(0xFF8F9275);
  static const Color neuTralVariant80 = Color(0xFFC9CBBC);
  static const Color neuTralVariant90 = Color(0xFFE2E3DB);
  static const Color neuTralVariant95 = Color(0xFFF3F3F0);
  static const Color neuTralVariant99 = Color(0xFFFBFBFA);
  static const Color neuTralVariant100 = Color(0xFFFFFFFF);

  static const Color transparent = Color(0x00000000);

  /// Custom
  static const Color blueAccent = Color(0xFF38BDF8);
  static const Color red = Color(0xFFF87171);
  static const Color yellow = Color(0xFFFFC700);
  static const Color lightYellow = Color(0xFFFDFAE9);
  static const Color green = Color(0xFF12D056);
  static const Color lightBlue = Color(0xFF01B8F1);
  static const Color lightGreen = Color(0xFF2CD997);
  static const Color teal = Color(0xFF009688);
  static const Color orange = Color(0xFFFB923C);
  static const Color purple = Color(0xFF8247FF);
  static const Color blueGrey = Color(0xFF263238);
  static const Color brown = Color(0xFF836600);
  static const Color table = Color(0xFFF5F5F6);
  static const Color platium = Color(0xFFE1E6Eb);

  static const Color blue70 = Color(0xFFe2F2FF);

  static const Color customBackground = Color(0xFFF1F5F8);
  static const Color customSecondary = Color(0xFF2F548A);
  static const Color customSecondary50 = Color(0xFFE7EBF1);
  static const Color customSecondary400 = Color(0xFF5673A0);

  static const Color customError50 = Color(0xFFFCE8E6);
  static const Color customError400 = Color(0xFFFF6337);
  static const Color customRed = Color(0xFFFF4D4D);

  static const Color customAccent50 = Color(0xFFFFF7E0);
  static const Color customAccent400 = Color(0xFFFFBA00);
  static const Color customIvory = Color(0xFFFFFDEF);
}
