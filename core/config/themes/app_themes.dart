import 'package:flutter/material.dart';

class AppThemes {
  final ThemeData themeData;

  AppThemes(this.themeData);

  static ThemeData get darkTheme => ThemeData.dark().copyWith(
      // Customize dark theme properties
      );

  static ThemeData get lightTheme => ThemeData.light().copyWith(
      // Customize light theme properties
      );
}
