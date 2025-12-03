import 'package:flutter/material.dart';
import 'package:portfolio/core/config/theme/app_colors.dart';

class AppTheme {
  static ThemeData getTheme(bool isDark) {
    ColorScheme colorScheme = ColorScheme(
      brightness: isDark ? Brightness.dark : Brightness.light,
      primary: AppColors.primary,
      onPrimary: isDark ? Colors.white : Colors.black,
      secondary: Colors.white,
      onSecondary: isDark ? Colors.white : Colors.black,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.surface,
      onSurface: Colors.white,
      // surfaceTint: Colors.transparent,
    );
    return ThemeData(
      fontFamily: 'Inter',
      useMaterial3: true,
      scaffoldBackgroundColor: isDark ? colorScheme.surface : Colors.white,
      colorScheme: colorScheme.copyWith(surfaceTint: Colors.transparent),

      appBarTheme: AppBarTheme(
        backgroundColor:
            Colors.transparent, //isDark ? AppColors.background : Colors.white,
        titleTextStyle: TextStyle(
          color: isDark ? Colors.white : colorScheme.surface,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),

      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: isDark ? Colors.white : colorScheme.surface,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          color: isDark ? Colors.white : colorScheme.surface,
        ),
      ),
    );
  }
}
