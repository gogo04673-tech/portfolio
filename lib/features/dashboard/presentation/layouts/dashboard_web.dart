import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/about/presentation/pages/about.dart';
import 'package:portfolio/features/home/presentation/pages/home.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/features/my_works/presentation/pages/my_works.dart';
import 'package:portfolio/features/services/presentation/pages/services.dart';

class DashboardWeb extends StatelessWidget {
  const DashboardWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        context.spacing.xxl.sp.h,
        const HomePage(),

        SizedBox(height: context.spacing.xxl64.sp * 2),
        const AboutPage(),

        SizedBox(height: context.spacing.xxl64.sp * 2),
        const ServicesPage(),

        SizedBox(height: context.spacing.xxl64.sp * 2),
        const MyWorksPage(),

        const SizedBox(height: 1000),
      ],
    );
  }
}
