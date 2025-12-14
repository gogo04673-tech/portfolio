import 'package:flutter/material.dart';

class AppCustomColors extends ThemeExtension<AppCustomColors> {
  final Color paragraphColor;
  final Color white;
  final Color grey;

  const AppCustomColors({
    required this.paragraphColor,
    required this.white,
    required this.grey,
  });

  @override
  AppCustomColors copyWith({Color? paragraphColor, Color? white, Color? grey}) {
    return AppCustomColors(
      paragraphColor: paragraphColor ?? this.paragraphColor,
      white: white ?? this.white,
      grey: grey ?? this.grey,
    );
  }

  @override
  AppCustomColors lerp(ThemeExtension<AppCustomColors>? other, double t) {
    if (other is! AppCustomColors) return this;
    return AppCustomColors(
      paragraphColor: Color.lerp(paragraphColor, other.paragraphColor, t)!,
      white: Color.lerp(white, other.white, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
    );
  }
}
