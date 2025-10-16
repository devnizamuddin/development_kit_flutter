import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/assets_path.dart';
import 'asset_image.dart';

class AppNetworkImage extends StatelessWidget {
  final BoxFit? fit;
  final double? height;
  final double? width;
  final String imageUrl;
  final Widget Function(BuildContext, String)? placeholder;
  final Widget Function(BuildContext, String, Object)? errorWidget;

  const AppNetworkImage({
    super.key,
    this.height = 200,
    this.width,
    this.placeholder,
    this.errorWidget,
    required this.imageUrl,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: fit,
      placeholder:
          placeholder ??
          (context, url) {
            return Container(
              height: height,
              width: width,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(strokeWidth: 2),
            );
          },
      errorWidget:
          errorWidget ??
          (context, url, error) {
            return const AppAssetImage(assetPath: AssetsPath.DEFAULT_IMAGE);
          },
    );
  }
}
