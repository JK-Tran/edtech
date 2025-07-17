// ignore_for_file: avoid_hardcoded_colors
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:flutter/material.dart';

class RounedRectangleShimmer extends StatelessWidget {
  const RounedRectangleShimmer({
    this.width,
    this.height,
    super.key,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? Dimens.d16.responsive(),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
      ),
    );
  }
}
