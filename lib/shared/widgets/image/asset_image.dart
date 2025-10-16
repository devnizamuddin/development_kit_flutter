import 'package:flutter/material.dart';

import '../../../core/constants/assets_path.dart';

class AppAssetImage extends StatelessWidget {
  final String assetPath;
  final double? height;
  final double? width;
  final BoxFit? fit;

  const AppAssetImage({
    super.key,
    required this.assetPath,
    this.fit = BoxFit.cover,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      height: height,
      width: width,
      image: AssetImage(assetPath),
      errorBuilder: (context, error, stackTrace) {
        return const AppAssetImage(assetPath: AssetsPath.DEFAULT_IMAGE);
      },
    );
  }
}
