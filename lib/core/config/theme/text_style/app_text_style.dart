import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';

class AppTextStyles {
  // static TextStyle title() {
  //   if (width >= Breakpoints.desktop) {
  //     return const TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  //   } else if (width >= Breakpoints.tablet) {
  //     return const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  //   } else {
  //     return const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  //   }
  // }

  static TextStyle headerLarge() {
    return TextStyle(
      fontSize: Breakpoints.isMobile ? 34 : 64,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      height: 1.1,
      letterSpacing: 1.2,
    );
  }

  static TextStyle headerSmall() {
    return TextStyle(
      fontSize: Breakpoints.isMobile ? 14.sp : 16.sp,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 1.2.sp,
    );
  }

  static TextStyle headLineMedium() {
    return GoogleFonts.atkinsonHyperlegible(
      fontSize: Breakpoints.isMobile ? 14 : 24,
      fontWeight: FontWeight.bold,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle bodySmall() {
    return TextStyle(
      fontSize: Breakpoints.isMobile ? 12 : 18,
      color: const Color(0xFFB8B8B8),
    );
  }

  static TextStyle bodyLarge() {
    return TextStyle(
      fontSize: Breakpoints.isMobile ? 16 : 14,
      color: Colors.white,
    );
  }
}
