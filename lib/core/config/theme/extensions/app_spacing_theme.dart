import 'dart:ui';

import 'package:flutter/material.dart';

@immutable
class AppSpacingTheme extends ThemeExtension<AppSpacingTheme> {
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;
  final double xxl64;

  const AppSpacingTheme({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xxl,
    required this.xxl64,
  });

  @override
  AppSpacingTheme copyWith({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
    double? xxl64,
  }) {
    return AppSpacingTheme(
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
      xxl64: xxl ?? this.xxl64,
    );
  }

  @override
  ThemeExtension<AppSpacingTheme> lerp(
    covariant ThemeExtension<AppSpacingTheme>? other,
    double t,
  ) {
    if (other is! AppSpacingTheme) return this;
    return AppSpacingTheme(
      xs: lerpDouble(xs, other.xs, t)!,
      sm: lerpDouble(sm, other.sm, t)!,
      md: lerpDouble(md, other.md, t)!,
      lg: lerpDouble(lg, other.lg, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
      xxl: lerpDouble(xxl, other.xxl, t)!,
      xxl64: lerpDouble(xxl64, other.xxl64, t)!,
    );
  }
}
