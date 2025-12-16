import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';

class AppTextStyles {
  static final width = 1.w;
  static TextStyle title() {
    if (width >= Breakpoints.desktop) {
      return const TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
    } else if (width >= Breakpoints.tablet) {
      return const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
    } else {
      return const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    }
  }

  static TextStyle headerLarge() {
    return TextStyle(
      fontSize: width >= Breakpoints.mobile ? 64.sp : 56.sp,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle headerSmall() {
    return TextStyle(
      fontSize: width >= Breakpoints.mobile ? 14.sp : 16.sp,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 1.2.sp,
    );
  }

  static TextStyle headLineMedium() {
    return GoogleFonts.atkinsonHyperlegible(
      fontSize: width > Breakpoints.mobile ? 20.sp : 24.sp,
      fontWeight: FontWeight.bold,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle bodySmall() {
    return TextStyle(
      fontSize: width >= Breakpoints.tablet ? 16 : 14,
      color: Colors.white,
    );
  }

  static TextStyle bodyLarge() {
    return TextStyle(
      fontSize: width >= Breakpoints.tablet ? 16 : 14,
      color: Colors.white,
    );
  }
}
