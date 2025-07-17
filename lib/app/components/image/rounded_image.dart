import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

import 'error_image.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.size = 56,
    this.imageURL,
    this.border,
  });

  final double size;
  final String? imageURL;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: size,
      height: size,
      imageUrl: imageURL ?? '',
      fit: BoxFit.cover,
      imageBuilder: (
        BuildContext context,
        ImageProvider<Object> imageProvider,
      ) {
        return Container(
          decoration: BoxDecoration(
            border: border,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(backgroundImage: imageProvider),
        );
      },
      progressIndicatorBuilder: (_, String url, DownloadProgress progress) =>
          Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: size,
              width: size,
              decoration: BoxDecoration(
                color:
                    context.colorScheme.primaryContainer.withValues(alpha: 0.5),
                border: border,
                shape: BoxShape.circle,
              ),
            ),
            CircularProgressIndicator(value: progress.progress),
          ],
        ),
      ),
      errorWidget: (BuildContext context, String url, dynamic error) =>
          ErrorImage(
        size: size,
        isRounded: true,
        border: border,
      ),
    );
  }
}
