import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech/app/components/image/error_image.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:flutter/material.dart';

class RoundedRectImage extends StatelessWidget {
  const RoundedRectImage({
    super.key,
    this.imageURL,
    this.width,
    this.height,
    this.borderRadius,
    this.fit = BoxFit.fill,
  });

  final String? imageURL;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(Dimens.d8),
      child: CachedNetworkImage(
        imageUrl: imageURL ?? '',
        width: width,
        height: height,
        fit: fit,
        progressIndicatorBuilder: (_, String url, DownloadProgress progress) =>
            Center(child: CircularProgressIndicator(value: progress.progress)),
        errorWidget: (BuildContext context, String url, dynamic error) =>
            ErrorImage(size: width),
      ),
    );
  }
}
