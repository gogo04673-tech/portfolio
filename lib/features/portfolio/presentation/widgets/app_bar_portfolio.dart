import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/common/components/buttons/basic_button.dart';
import 'package:portfolio/common/components/circle_small.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/app_bar_options.dart';
import 'package:portfolio/l10n/app_localizations.dart';

class AppBarPortfolio extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: const _FlexibleSpace(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.sp);
}

class _FlexibleSpace extends StatelessWidget {
  const _FlexibleSpace();

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
            child: Container(
              constraints: BoxConstraints(maxHeight: 60.sp, maxWidth: 1140.sp),
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleSmall(),
                  const AppBarSections(),
                  BasicButton(title: local.contactMe, onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
