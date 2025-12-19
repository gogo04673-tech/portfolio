import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/appear_animation.dart';
import 'package:portfolio/core/config/assets/app_images.dart';
import 'package:portfolio/core/config/theme/design/spacing.dart';
import 'package:portfolio/core/extensions/device_extension.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppearAnimation(
      child: Padding(
        padding: EdgeInsets.only(
          left: Breakpoints.isMobile
              ? context.width * .15
              : context.width * .05,
        ),
        child: Stack(
          clipBehavior: Clip.none,

          children: [
            Container(
              width: Breakpoints.isMobile ? 160 : 200,
              height: Breakpoints.isMobile ? 200 : 250,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF).withValues(alpha: .2),
                borderRadius: BorderRadius.circular(AppSpacing.md),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(4, 4), // X, Y
                    blurRadius: 4, // Blur
                    color: Colors.black.withValues(alpha: 0.25),
                  ),
                ],
              ),
            ),

            Transform.translate(
              offset: const Offset(8, -6),
              child: Transform.rotate(
                angle: 4.2 * pi / 180,
                child: Container(
                  width: Breakpoints.isMobile ? 160 : 200,
                  height: Breakpoints.isMobile ? 200 : 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppSpacing.md),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(4, 4), // X, Y
                        blurRadius: 4, // Blur
                        color: Colors.black.withOpacity(0.25),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(15.5, -10),
              child: Transform.rotate(
                angle: 8.4 * pi / 180,
                child: Container(
                  width: Breakpoints.isMobile ? 160 : 200,
                  height: Breakpoints.isMobile ? 200 : 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppSpacing.md),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(4, 4), // X, Y
                        blurRadius: 4, // Blur
                        color: Colors.black.withOpacity(0.25),
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Theme.of(context).colorScheme.secondary,
                        Theme.of(context).colorScheme.primary,
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Transform.translate(
              offset: Offset(
                Breakpoints.isMobile ? -40 : -55.2,
                Breakpoints.isMobile ? -53.2 : -64.2,
              ),
              child: Transform.rotate(
                angle: 8.4 * pi / 180,
                child: Transform.flip(
                  flipX: true,
                  child: Image.asset(
                    AppImages.myPhoto,
                    width: Breakpoints.isMobile ? 240 : 300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
