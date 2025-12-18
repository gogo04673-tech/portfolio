import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/core/config/assets/app_images.dart';
import 'package:portfolio/core/config/theme/design/spacing.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/features/dashboard/presentation/widgets/headline_title.dart';
import 'package:portfolio/l10n/app_localizations.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              local.hiImName("Mohammed"),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Container(
              width: 2,
              height: 28,
              color: const Color(0xFFFFFFFF).withValues(alpha: .2),
              margin: const EdgeInsets.symmetric(horizontal: 8),
            ),
            Text(
              local.basedOnCountry("Morocco"),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),

        context.spacing.lg.h,

        HeadlineTitle(
          gradientText: local.creative,
          text: local.designAndDeveloper,
        ),

        context.spacing.lg.h,

        SizedBox(
          width: 500,
          child: Text(
            local.bio,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),

        context.spacing.xl.h,
        context.spacing.xxl.h,
        //
        _ImageHero(),
      ],
    );
  }
}

class _ImageHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 250,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF).withValues(alpha: .2),
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

        Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(8, -4.5)
            ..rotateZ(4.2 * pi / 180),
          child: Container(
            width: 200,
            height: 250,
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

        Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(16.2, -9)
            ..rotateZ(8.4 * pi / 180),
          child: Container(
            width: 200,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSpacing.md),
              color: Theme.of(context).colorScheme.primary,
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

        Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..scale(-1.0, 1.0)
            ..translate(56, -62.8)
            ..rotateZ(-8.4 * pi / 180),
          child: Image.asset(AppImages.myPhoto, width: 300),
        ),
      ],
    );
  }
}
