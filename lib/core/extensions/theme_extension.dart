import 'package:flutter/material.dart';
import 'package:portfolio/core/config/theme/colors/app_custom_color.dart';
import 'package:portfolio/core/config/theme/extensions/app_spacing_theme.dart';

extension ThemeExtension on BuildContext {
  AppSpacingTheme get spacing => Theme.of(this).extension<AppSpacingTheme>()!;

  ColorScheme get colors => Theme.of(this).colorScheme;
  AppCustomColors get colorExtension =>
      Theme.of(this).extension<AppCustomColors>()!;
  TextTheme get textTheme => Theme.of(this).textTheme;
}
