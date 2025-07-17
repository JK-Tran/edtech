import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class AuthImage extends StatelessWidget {
  const AuthImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: context.width * 0.55,
        child: Hero(
          tag: 'login_image',
          child: Assets.images.logoSplash.image(),
        ),
      ),
    );
  }
}
