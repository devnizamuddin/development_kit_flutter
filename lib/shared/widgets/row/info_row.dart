import 'package:flutter/material.dart';

import '../../extensions/build_context.dart';

class InfoRow extends StatelessWidget {
  final String title;
  final String value;
  final TextStyle? titleFontStyle;
  final TextStyle? valueFontStyle;
  final int titleFlex;
  final int valueFlex;

  const InfoRow({
    super.key,
    required this.title,
    required this.value,
    this.titleFontStyle,
    this.valueFontStyle,
    this.titleFlex = 1,
    this.valueFlex = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: titleFlex,
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: titleFontStyle ?? context.labelLarge,
          ),
        ),
        Text(
          ': ',
          style: titleFontStyle ?? context.labelLarge,
        ),
        Expanded(
            flex: valueFlex,
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: valueFontStyle ?? context.bodyMedium,
            ))
      ],
    );
  }
}
