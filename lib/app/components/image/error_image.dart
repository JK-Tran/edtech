import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class ErrorImage extends StatelessWidget {
  const ErrorImage({super.key, this.size, this.isRounded = false, this.border});

  final double? size;
  final bool isRounded;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size,
        decoration: BoxDecoration(
          borderRadius: isRounded ? null : BorderRadius.circular(8),
          shape: isRounded ? BoxShape.circle : BoxShape.rectangle,
          border: border,
          color: context.colors.neuTral99,
          image: DecorationImage(
            image: AssetImage(Assets.images.avatar.path),
          ),
        ),
        // child: Image.asset(ImageAssets.avatar1, height: size),
      ),
    );
  }
}
