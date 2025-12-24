import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';

class AppTextStyles {
  static TextStyle headerLarge() {
    return GoogleFonts.bricolageGrotesque(
      fontSize: Breakpoints.isMobile ? 34 : 64,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      height: 1.1,
      letterSpacing: 1.2,
    );
  }

  static TextStyle headerSmall() {
    return GoogleFonts.bricolageGrotesque(
      fontSize: Breakpoints.isMobile ? 14 : 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      letterSpacing: 1.2.sp,
    );
  }

  static TextStyle headLineMedium() {
    return GoogleFonts.atkinsonHyperlegible(
      fontSize: Breakpoints.isMobile ? 14 : 24,
      fontWeight: FontWeight.bold,
      color: const Color(0xFFFFFFFF),
      letterSpacing: 1.2,
    );
  }

  static TextStyle titleMedium() {
    return GoogleFonts.bricolageGrotesque(
      fontSize: Breakpoints.isMobile ? 18 : 28,
      fontWeight: FontWeight.bold,
      color: const Color(0xFFFFFFFF),
      letterSpacing: 1.2,
    );
  }

  static TextStyle bodySmall() {
    return GoogleFonts.bricolageGrotesque(
      fontSize: Breakpoints.isMobile ? 12 : 18,
      color: const Color(0xFFB8B8B8),
    );
  }

  static TextStyle bodyLarge() {
    return GoogleFonts.bricolageGrotesque(
      fontSize: Breakpoints.isMobile ? 16 : 14,
      color: Colors.white,
    );
  }
}
