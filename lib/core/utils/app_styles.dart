import 'package:flutter/material.dart';

import '../../presentation/widgets/app_bar/home_app_bar.dart';
import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle s52 = TextStyle(
    color: AppColors.white,
    fontSize: 52,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s32 = TextStyle(
    color: HexColor('#B18FCF'),
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s28 = TextStyle(
    color: HexColor('#B18FCF'),
    fontSize: 28,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s24 = TextStyle(
    color: AppColors.white,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s18 = TextStyle(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle s17 = TextStyle(
    color: AppColors.white,
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static TextStyle s16 = TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s14 = TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
