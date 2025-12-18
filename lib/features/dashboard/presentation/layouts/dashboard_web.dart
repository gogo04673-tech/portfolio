import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/features/home/presentation/pages/home_desktop.dart';

class DashboardWeb extends StatelessWidget {
  const DashboardWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 48.sp),
        const HomeDesktop(),
      ],
    );
  }
}
