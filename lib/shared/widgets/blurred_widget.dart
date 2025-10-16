import 'dart:ui';
import 'package:flutter/material.dart';

/// A reusable widget that applies a blur effect and optional overlay
/// on top of any child widget — useful for "disabled" or "locked" states.
class BlurredWidget extends StatelessWidget {
  final Widget child;
  final bool isBlurred;
  final double blurSigma;
  final Color overlayColor;
  final Widget? overlayContent; // e.g. "OUT OF STOCK" text or icon
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;

  const BlurredWidget({
    super.key,
    required this.child,
    required this.isBlurred,
    this.blurSigma = 4,
    this.overlayColor =
        const Color(0x80000000), // default: semi-transparent black
    this.overlayContent,
    this.borderRadius,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = SizedBox(
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: Stack(
          alignment: AlignmentGeometry.center,
          fit: StackFit.passthrough,
          children: [
            child,
            if (isBlurred)
              Positioned(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: blurSigma,
                    sigmaY: blurSigma,
                  ),
                  child: Container(
                    color: overlayColor,
                  ),
                ),
              ),
            if (isBlurred && overlayContent != null)
              Center(child: overlayContent),
          ],
        ),
      ),
    );

    return InkWell(
      onTap: isBlurred ? null : onTap,
      child: content,
    );
  }
}

/*
 * ┏==================================================================================================┓
 * ┃                                🧠 Example Usage #1 — Product Item                                ┃
 * ┗==================================================================================================┛
 */

// BlurredWidget(
//   isBlurred: !isAvailable,
//   borderRadius: BorderRadius.circular(16),
//   overlayContent: Container(
//     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//     decoration: BoxDecoration(
//       color: Colors.red.withOpacity(0.8),
//       borderRadius: BorderRadius.circular(12),
//     ),
//     child: const Text(
//       'OUT OF STOCK',
//       style: TextStyle(
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//         letterSpacing: 1,
//       ),
//     ),
//   ),
//   child: Image.network(
//     'https://picsum.photos/200',
//     height: 160,
//     width: 160,
//     fit: BoxFit.cover,
//   ),
// );
