// ignore_for_file: avoid_hardcoded_colors
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:flutter/material.dart';

class CircleShimmer extends StatelessWidget {
  const CircleShimmer({
    this.diameter,
    super.key,
  });

  final double? diameter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter ?? Dimens.d32.responsive(),
      height: diameter ?? Dimens.d32.responsive(),
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
