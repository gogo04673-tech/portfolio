import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/features/about/presentation/pages/about.dart';
import 'package:portfolio/features/home/presentation/pages/home.dart';
import 'package:portfolio/features/testimonails/presentation/layouts/testimonials_tablet.dart';

class DashboardTablet extends StatelessWidget {
  const DashboardTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 48.sp),

        const HomePage(),
        const TestimonialsTablet(),

        const AboutPage(),
      ],
    );
  }
}
