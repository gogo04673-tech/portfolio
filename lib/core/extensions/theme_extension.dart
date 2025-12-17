import 'package:flutter/material.dart';
import 'package:portfolio/core/config/theme/extensions/app_spacing_theme.dart';

extension ThemeExtension on BuildContext {
  AppSpacingTheme get spacing => Theme.of(this).extension<AppSpacingTheme>()!;
}
