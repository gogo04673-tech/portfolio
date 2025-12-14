import 'package:flutter/material.dart';
import 'package:portfolio/core/config/theme/colors/app_custom_color.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';

class AppTextStyles {
  static TextStyle title(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width >= Breakpoints.desktop) {
      return const TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
    } else if (width >= Breakpoints.tablet) {
      return const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
    } else {
      return const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    }
  }

  static TextStyle headerLarge(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return TextStyle(
      fontSize: width >= Breakpoints.tablet ? 24 : 18,
      color: Theme.of(context).extension<AppCustomColors>()!.white,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return TextStyle(
      fontSize: width >= Breakpoints.tablet ? 16 : 14,
      color: Colors.black.withValues(alpha: 0.2),
    );
  }

  static TextStyle bodyLarge(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return TextStyle(
      fontSize: width >= Breakpoints.tablet ? 16 : 14,
      color: Theme.of(context).extension<AppCustomColors>()!.white,
    );
  }
}
