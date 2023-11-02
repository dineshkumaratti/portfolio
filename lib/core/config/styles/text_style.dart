import 'package:flutter/material.dart';

TextStyle getTextStyle({
  double? fontSize = 12,
  Color? color,
  bool? isPrimaryColor = false,
  FontWeight? fontWeight = FontWeight.w500,
  String? fontFamily = 'Roboto',
  Color? backgroundColor,
  FontStyle? fontStyle,
  double? letterSpacing = 0,
  double? wordSpacing = 0,
  double? height = 1,
  TextOverflow overflow = TextOverflow.ellipsis,
}) {
  return TextStyle(
    color: color
    // ?? getIt<ThemeBloc>().state.isDark!
    //     ? AppColors.textColor
    //     : AppColors.arrowColor
    ,
    fontSize: fontSize!,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    backgroundColor: backgroundColor,
    fontStyle: fontStyle,
    letterSpacing: letterSpacing!,
    wordSpacing: wordSpacing!,
    height: height!,
    overflow: overflow,
  );
}
