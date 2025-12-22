import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/device_extension.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';

class CircleBackground extends StatelessWidget {
  const CircleBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Breakpoints.isMobile ? context.height * .7 : context.height * .75,
      child: CustomPaint(
        size: Size(Breakpoints.isMobile ? 3000 : 7000, 4000),
        // size: const Size(7564, 4181),
        painter: HalfCirclePainter(),
      ),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withOpacity(.04);
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height * 2),
      pi,
      pi,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
