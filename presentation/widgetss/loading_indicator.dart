import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/core/config/app_colors.dart/app_colors.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({this.color, super.key});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color ?? AppColors.whiteColor,
      strokeWidth: 5,
    );
  }
}
