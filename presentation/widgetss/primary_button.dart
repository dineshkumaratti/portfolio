import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/core/config/app_colors.dart/app_colors.dart';
import 'package:dinesh_portfolio/presentation/widgetss/text_widget.dart';

import '../../core/config/styles/text_style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.margin,
    this.height = 48,
    this.width = double.infinity,
    this.isPrimary = true,
    this.fontStyle,
    this.bgColor,
    this.style,
    this.alignment,
    this.child,
    this.fontSize = 12,
  }) : super(key: key);

  final Alignment? alignment;
  final String? label;
  final FontStyle? fontStyle;
  final bool? isPrimary;
  final TextStyle? style;
  final Color? bgColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onPressed;
  final double? fontSize;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return bgColor == null
        ? buildButton()
        : Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              border: Border.all(
                  // color: AppColors.primaryColor,
                  ),
            ),
            child: buildButton(),
          );
  }

  Widget buildButton() => InkWell(
        onTap: () {
          onPressed!.call();
        },
        hoverColor: AppColors.primaryColor,
        splashColor: bgColor,
        // style: ElevatedButton.styleFrom(
        //   backgroundColor: bgColor,
        // isPrimary == true
        //     ? AppColors.primaryColor
        //     : bgColor ?? AppColors.bottomNavBgColor, // Background color
        // foregroundColor:
        //     AppColors.whiteTextColor,
        // Text Color (Foreground color)
        // ),
        child: SizedBox(
          width: width,
          height: height,
          child: Center(
            child: child ??
                TextWidget(
                  label: label!,
                  style: style ??
                      getTextStyle(
                        fontSize: fontSize,
                      ),
                ),
          ),
        ),
      );
}
