import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleSmall extends StatelessWidget {
  final double? size;
  final Widget? child;
  final double? opacity;
  const CircleSmall({super.key, this.size, this.child, this.opacity});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: size ?? 50.sp,
      height: size ?? 50.sp,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            colors.primary.withValues(alpha: opacity ?? 1),
            colors.secondary.withValues(alpha: opacity ?? 0.22),
          ],
        ),
      ),
      child: child,
    );
  }
}
