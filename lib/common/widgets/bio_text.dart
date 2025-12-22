import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/appear_animation.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';

class BioText extends StatelessWidget {
  final String bio;
  final bool isStart;
  const BioText({super.key, required this.bio, this.isStart = false});

  @override
  Widget build(BuildContext context) {
    final double width = isStart
        ? Breakpoints.isMobile
              ? 300
              : 700
        : Breakpoints.isMobile
        ? 300
        : 700;
    return AppearAnimation(
      child: SizedBox(
        width: width,
        child: Text(
          bio,
          textAlign: isStart ? TextAlign.start : TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
