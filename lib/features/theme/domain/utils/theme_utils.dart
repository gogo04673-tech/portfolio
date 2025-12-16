import '../enum/theme_type.dart';
import 'package:flutter/material.dart';

class ThemeUtils {
  static ThemeMode themeTypeToMode(ThemeType type) {
    switch (type) {
      case ThemeType.light:
        return ThemeMode.light;
      case ThemeType.dark:
        return ThemeMode.dark;
      case ThemeType.system:
        return ThemeMode.system;
    }
  }
}
