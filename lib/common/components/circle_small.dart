import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleSmall extends StatelessWidget {
  const CircleSmall({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: 50.sp,
      height: 50.sp,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [colors.primary, colors.secondary.withValues(alpha: 0.22)],
        ),
      ),
    );
  }
}
