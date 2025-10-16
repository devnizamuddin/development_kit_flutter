import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../config/theme/color.dart';
import '../../../core/constants/assets_path.dart';

class AppCircularNetworkImage extends StatelessWidget {
  const AppCircularNetworkImage({
    super.key,
    required this.imageUrl,
    this.radius = 16,
    this.border = 0,
    this.borderColor = AppColors.primary,
  });

  final String imageUrl;
  final double radius;
  final int border;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: borderColor,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: (radius * 2) - (border * 4),
          height: (radius * 2) - (border * 4),
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            width: (radius * 2) - (border * 4),
            height: (radius * 2) - (border * 4),
            alignment: Alignment.center,
            child: const CircularProgressIndicator(strokeWidth: 2),
          ),
          errorWidget: (context, url, error) => Image.asset(
            AssetsPath.PROFILE_DEMO,
            color: Colors.white,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
