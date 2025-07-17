import 'package:flutter/material.dart';

/// Data for the sizes of the theme.
class SizeData {
  /// {@macro sizes}
  const SizeData([double mainSize = 4.0])
      : zero = mainSize * 0,
        p4 = mainSize * 1,
        p8 = mainSize * 2,
        p12 = mainSize * 3,
        p16 = mainSize * 4,
        p20 = mainSize * 5,
        p24 = mainSize * 6,
        p28 = mainSize * 7,
        p32 = mainSize * 8,
        p36 = mainSize * 9,
        p40 = mainSize * 10,
        p44 = mainSize * 11,
        p48 = mainSize * 12,
        p52 = mainSize * 13,
        p56 = mainSize * 14,
        p60 = mainSize * 15,
        p64 = mainSize * 16,
        p72 = mainSize * 18,
        p80 = mainSize * 20,
        p96 = mainSize * 24;

  final double zero;
  final double p4;
  final double p8;
  final double p12;
  final double p16;
  final double p20;
  final double p24;
  final double p28;
  final double p32;
  final double p36;
  final double p40;
  final double p44;
  final double p48;
  final double p52;
  final double p56;
  final double p60;
  final double p64;
  final double p72;
  final double p80;
  final double p96;

  /// Get corresponding insets
  ThemeEdgeInsetsSizeData get insets => ThemeEdgeInsetsSizeData(this);

  /// Get corresponding gap
  ThemeGapSizeData get gaps => ThemeGapSizeData(this);
}

/// {@macro insets}
class ThemeEdgeInsetsSizeData {
  /// {@macro insets}
  const ThemeEdgeInsetsSizeData(this._spacing);

  final SizeData _spacing;

  /// All insets
  EdgeInsets get zero => EdgeInsets.zero;
  EdgeInsets get p4 => EdgeInsets.all(_spacing.p4);
  EdgeInsets get p8 => EdgeInsets.all(_spacing.p8);
  EdgeInsets get p12 => EdgeInsets.all(_spacing.p12);
  EdgeInsets get p16 => EdgeInsets.all(_spacing.p16);
  EdgeInsets get p20 => EdgeInsets.all(_spacing.p20);
  EdgeInsets get p24 => EdgeInsets.all(_spacing.p24);
  EdgeInsets get p28 => EdgeInsets.all(_spacing.p28);
  EdgeInsets get p32 => EdgeInsets.all(_spacing.p32);
  EdgeInsets get p36 => EdgeInsets.all(_spacing.p36);
  EdgeInsets get p40 => EdgeInsets.all(_spacing.p40);
  EdgeInsets get p44 => EdgeInsets.all(_spacing.p44);
  EdgeInsets get p48 => EdgeInsets.all(_spacing.p48);
  EdgeInsets get p52 => EdgeInsets.all(_spacing.p52);
  EdgeInsets get p56 => EdgeInsets.all(_spacing.p56);
  EdgeInsets get p60 => EdgeInsets.all(_spacing.p60);
  EdgeInsets get p64 => EdgeInsets.all(_spacing.p64);

  /// Horizontal insets
  EdgeInsets get h4 => EdgeInsets.symmetric(horizontal: _spacing.p4);
  EdgeInsets get h8 => EdgeInsets.symmetric(horizontal: _spacing.p8);
  EdgeInsets get h12 => EdgeInsets.symmetric(horizontal: _spacing.p12);
  EdgeInsets get h16 => EdgeInsets.symmetric(horizontal: _spacing.p16);
  EdgeInsets get h20 => EdgeInsets.symmetric(horizontal: _spacing.p20);
  EdgeInsets get h24 => EdgeInsets.symmetric(horizontal: _spacing.p24);
  EdgeInsets get h32 => EdgeInsets.symmetric(horizontal: _spacing.p32);
  EdgeInsets get h36 => EdgeInsets.symmetric(horizontal: _spacing.p36);
  EdgeInsets get h40 => EdgeInsets.symmetric(horizontal: _spacing.p40);
  EdgeInsets get h44 => EdgeInsets.symmetric(horizontal: _spacing.p44);
  EdgeInsets get h48 => EdgeInsets.symmetric(horizontal: _spacing.p48);
  EdgeInsets get h52 => EdgeInsets.symmetric(horizontal: _spacing.p52);
  EdgeInsets get h56 => EdgeInsets.symmetric(horizontal: _spacing.p56);
  EdgeInsets get h60 => EdgeInsets.symmetric(horizontal: _spacing.p60);
  EdgeInsets get h64 => EdgeInsets.symmetric(horizontal: _spacing.p64);

  /// Vertical insets
  EdgeInsets get v4 => EdgeInsets.symmetric(vertical: _spacing.p4);
  EdgeInsets get v8 => EdgeInsets.symmetric(vertical: _spacing.p8);
  EdgeInsets get v12 => EdgeInsets.symmetric(vertical: _spacing.p12);
  EdgeInsets get v16 => EdgeInsets.symmetric(vertical: _spacing.p16);
  EdgeInsets get v20 => EdgeInsets.symmetric(vertical: _spacing.p20);
  EdgeInsets get v24 => EdgeInsets.symmetric(vertical: _spacing.p24);
  EdgeInsets get v28 => EdgeInsets.symmetric(vertical: _spacing.p28);
  EdgeInsets get v32 => EdgeInsets.symmetric(vertical: _spacing.p32);
  EdgeInsets get v36 => EdgeInsets.symmetric(vertical: _spacing.p36);
  EdgeInsets get v40 => EdgeInsets.symmetric(vertical: _spacing.p40);
  EdgeInsets get v44 => EdgeInsets.symmetric(vertical: _spacing.p44);
  EdgeInsets get v48 => EdgeInsets.symmetric(vertical: _spacing.p48);
  EdgeInsets get v52 => EdgeInsets.symmetric(vertical: _spacing.p52);
  EdgeInsets get v56 => EdgeInsets.symmetric(vertical: _spacing.p56);
  EdgeInsets get v60 => EdgeInsets.symmetric(vertical: _spacing.p60);
  EdgeInsets get v64 => EdgeInsets.symmetric(vertical: _spacing.p64);

  EdgeInsets only({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      );

  EdgeInsets fromLTRB([
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  ]) =>
      EdgeInsets.fromLTRB(left, top, right, bottom);

  EdgeInsets symmetric([
    double horizontal = 0.0,
    double vertical = 0.0,
  ]) =>
      EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
}

/// {@macro gap}
class ThemeGapSizeData {
  /// {@macro sizes}
  const ThemeGapSizeData(this._spacing);

  final SizeData _spacing;

  /// Constant gap widths
  SizedBox get gapW4 => SizedBox(width: _spacing.p4);
  SizedBox get gapW8 => SizedBox(width: _spacing.p8);
  SizedBox get gapW12 => SizedBox(width: _spacing.p12);
  SizedBox get gapW16 => SizedBox(width: _spacing.p16);
  SizedBox get gapW20 => SizedBox(width: _spacing.p20);
  SizedBox get gapW24 => SizedBox(width: _spacing.p24);
  SizedBox get gapW28 => SizedBox(width: _spacing.p28);
  SizedBox get gapW32 => SizedBox(width: _spacing.p32);
  SizedBox get gapW36 => SizedBox(width: _spacing.p36);
  SizedBox get gapW40 => SizedBox(width: _spacing.p40);
  SizedBox get gapW44 => SizedBox(width: _spacing.p44);
  SizedBox get gapW48 => SizedBox(width: _spacing.p48);
  SizedBox get gapW52 => SizedBox(width: _spacing.p52);
  SizedBox get gapW56 => SizedBox(width: _spacing.p56);
  SizedBox get gapW60 => SizedBox(width: _spacing.p60);
  SizedBox get gapW64 => SizedBox(width: _spacing.p64);

  /// Constant gap heights
  SizedBox get gapH4 => SizedBox(height: _spacing.p4);
  SizedBox get gapH8 => SizedBox(height: _spacing.p8);
  SizedBox get gapH12 => SizedBox(height: _spacing.p12);
  SizedBox get gapH16 => SizedBox(height: _spacing.p16);
  SizedBox get gapH20 => SizedBox(height: _spacing.p20);
  SizedBox get gapH24 => SizedBox(height: _spacing.p24);
  SizedBox get gapH28 => SizedBox(height: _spacing.p28);
  SizedBox get gapH32 => SizedBox(height: _spacing.p32);
  SizedBox get gapH36 => SizedBox(height: _spacing.p36);
  SizedBox get gapH40 => SizedBox(height: _spacing.p40);
  SizedBox get gapH44 => SizedBox(height: _spacing.p44);
  SizedBox get gapH48 => SizedBox(height: _spacing.p48);
  SizedBox get gapH52 => SizedBox(height: _spacing.p52);
  SizedBox get gapH56 => SizedBox(height: _spacing.p56);
  SizedBox get gapH60 => SizedBox(height: _spacing.p60);
  SizedBox get gapH64 => SizedBox(height: _spacing.p64);
}
