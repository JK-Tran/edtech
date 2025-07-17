import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/resource/theme/data/font_family.dart';
import 'package:edtech/core/resource/theme/data/size_data.dart';
import 'package:edtech/core/resource/theme/data/typography_data.dart';
import 'package:edtech/core/resource/theme/provider/theme_resolver.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class ThemeDataContainer {
  const ThemeDataContainer({
    this.colors = const ColorPaletteData(),
    this.sizes = const SizeData(),
    this.typographys = const TypographyData(),
  });

  final ColorPaletteData colors;
  final SizeData sizes;
  final TypographyData typographys;

  ThemeData lightTheme() {
    final colorScheme = ColorPaletteData.lightColorScheme(colors);
    final textTheme = TypographyData.textTheme(typographys);

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: colorScheme.surface,
      brightness: Brightness.light,
      textTheme: textTheme.apply(
        displayColor: const ColorPaletteData().neuTral10,
        bodyColor: const ColorPaletteData().neuTral10,
      ),
      fontFamily: FontFamily.lexend,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        surfaceTintColor: colorScheme.surface,
      ),
      splashColor: colorScheme.primary.withValues(alpha: 0.1),
      highlightColor: colorScheme.primary.withValues(alpha: 0.1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: typographys.titleMedium.weight500,
          minimumSize: const Size.fromHeight(48),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
        ),
      ),
      dialogBackgroundColor: colorScheme.surface,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colorScheme.surface,
        surfaceTintColor: colorScheme.surface,
        modalBackgroundColor: colorScheme.surface,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: colorScheme.surface,
        surfaceTintColor: colorScheme.surface,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        indicatorColor: colors.transparent,
        labelTextStyle:
            WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return textTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.w500,
              color: colorScheme.primary,
            );
          }

          return textTheme.labelMedium!.copyWith(
            fontWeight: FontWeight.w500,
            color: colorScheme.onSurfaceVariant,
          );
        }),
      ),
      scrollbarTheme: const ScrollbarThemeData(radius: Radius.circular(8)),
    );
  }

  ThemeData darkTheme() {
    final colorScheme = ColorPaletteData.darkColorScheme(colors);
    final textTheme = TypographyData.textTheme(typographys);

    return ThemeData(
      brightness: Brightness.dark,
      // useMaterial3: true,
      scaffoldBackgroundColor: colorScheme.surface,
      textTheme: textTheme.apply(
        displayColor: const ColorPaletteData().neuTral99,
        bodyColor: const ColorPaletteData().neuTral99,
      ),
      fontFamily: FontFamily.lexend,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        labelTextStyle: WidgetStateTextStyle.resolveWith(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.primary,
              );
            }

            return textTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.w500,
              color: colorScheme.onSurfaceVariant,
            );
          },
        ),
      ),
    );
  }
}

enum AppThemeType { light, dark }

extension ThemeDataExtensions on ThemeResolver {
  static final Map<AppThemeType, ColorPaletteData> _appColorMap = {};

  void addAppColor(AppThemeType type, ColorPaletteData appColor) {
    _appColorMap[type] = appColor;
  }

  ColorPaletteData get appColor {
    return _appColorMap[AppThemeSetting.currentAppThemeType] ??
        ColorPaletteData.current;
  }
}

class AppThemeSetting {
  const AppThemeSetting._();
  static AppThemeType currentAppThemeType = AppThemeType.light;
}
