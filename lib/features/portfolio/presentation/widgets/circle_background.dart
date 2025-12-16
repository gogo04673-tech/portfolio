import 'package:flutter/material.dart';

class CircleBackground extends StatelessWidget {
  const CircleBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior:
          Clip.none, // مهم جداً لتسمح للـ circle بالخروج من حدود Stack
      children: [
        Positioned(
          top: 872, // y
          left: -851, // x
          child: Container(
            width: 3464,
            height: 3181,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withValues(alpha: 0.2),
            ),
          ),
        ),
      ],
    );
  }
}
