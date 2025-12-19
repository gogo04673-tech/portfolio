import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/appear_animation.dart';
import 'package:portfolio/core/extensions/device_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';
import 'package:portfolio/features/home/presentation/widgets/headline_title.dart';
import 'package:portfolio/features/home/presentation/widgets/hero_image.dart';
import 'package:portfolio/features/home/presentation/widgets/welcome_based.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WelcomeBased(),

        context.spacing.lg.h,

        HeadlineTitle(
          gradientText: context.local.creative,
          text: context.local.designAndDeveloper,
        ),

        context.spacing.lg.h,

        AppearAnimation(
          child: SizedBox(
            width: Breakpoints.isMobile ? 300 : 500,
            child: Text(
              context.local.bio,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),

        context.spacing.xl.h,
        context.spacing.xxl.h,
        //
        const HeroImage(),
      ],
    );
  }
}
