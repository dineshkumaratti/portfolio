import 'package:flutter/material.dart';

import '../../core/config/styles/text_style.dart';

class TextWidget extends StatelessWidget {
  final String? label;
  final TextStyle? style;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool? breakSpaces;
  const TextWidget({
    super.key,
    required this.label,
    this.style,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign,
    this.breakSpaces = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        label!,
        maxLines: maxLines,
        softWrap: true,
        overflow: overflow,
        textAlign: textAlign,
        style: style ?? getTextStyle(),
      ),
    );
  }
}

String? breakString(String? label) {
  return label!.split(' ').join('\n');
}
