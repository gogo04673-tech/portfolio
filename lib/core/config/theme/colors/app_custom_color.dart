import 'package:flutter/material.dart';

class AppCustomColors extends ThemeExtension<AppCustomColors> {
  final Color paragraphColor;
  final Color white;
  final Color grey;
  final Color white08;

  const AppCustomColors({
    required this.paragraphColor,
    required this.white,
    required this.grey,
    required this.white08,
  });

  @override
  AppCustomColors copyWith({
    Color? paragraphColor,
    Color? white,
    Color? grey,
    Color? white08,
  }) {
    return AppCustomColors(
      paragraphColor: paragraphColor ?? this.paragraphColor,
      white: white ?? this.white,
      grey: grey ?? this.grey,
      white08: white08 ?? this.white08,
    );
  }

  @override
  AppCustomColors lerp(ThemeExtension<AppCustomColors>? other, double t) {
    if (other is! AppCustomColors) return this;
    return AppCustomColors(
      paragraphColor: Color.lerp(paragraphColor, other.paragraphColor, t)!,
      white: Color.lerp(white, other.white, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      white08: Color.lerp(white08, other.white08, t)!,
    );
  }
}
