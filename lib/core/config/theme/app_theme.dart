import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/config/theme/colors/app_custom_color.dart';
import 'package:portfolio/core/config/theme/text_style/app_text_style.dart';
import 'colors/app_colors.dart';

class AppTheme {
  static ThemeData buildTheme({required bool isDark}) {
    final baseTheme = isDark
        ? ThemeData.dark(useMaterial3: true)
        : ThemeData.light(useMaterial3: true);

    final colorScheme = baseTheme.colorScheme.copyWith(
      primary: AppColors.primary,
      onPrimary: isDark ? AppColors.textPrimaryDark : AppColors.textPrimary,
      secondary: AppColors.secondary,
      onSecondary: isDark ? AppColors.onSurfaceDark : AppColors.onSurfaceLight,
      surface: isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
      onSurface: isDark ? AppColors.onSurfaceDark : AppColors.onSurfaceLight,
      error: Colors.red,
      onError: Colors.white,
    );

    return baseTheme.copyWith(
      colorScheme: colorScheme,

      scaffoldBackgroundColor: colorScheme.surface,

      extensions: [
        AppCustomColors(
          paragraphColor: Colors.black.withValues(alpha: .2),
          white: Colors.white,
          grey: Colors.grey,
        ),
      ],
      iconTheme: IconThemeData(color: colorScheme.primary),

      // * Text Theme Bricolage Grotesque
      textTheme: GoogleFonts.bricolageGrotesqueTextTheme(baseTheme.textTheme)
          .copyWith(
            bodySmall: AppTextStyles.bodySmall(),
            headlineLarge: AppTextStyles.headerLarge(),
            headlineSmall: AppTextStyles.headerSmall(),
            headlineMedium: AppTextStyles.headLineMedium(),
          ),

      // * AppBar
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: colorScheme.onSurface,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        iconTheme: IconThemeData(color: colorScheme.onSurface),
      ),

      // * Input Decoration
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
          height: 0.6,
        ),
        suffixIconColor: Colors.grey,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.grey, width: 0.1),
        ),
      ),

      // * Radio
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
      ),
    );
  }
}
