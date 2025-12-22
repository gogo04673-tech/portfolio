import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/extensions/device_extension.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/about/presentation/widgets/cards_about.dart';
import 'package:portfolio/features/about/presentation/widgets/content_about.dart';
import 'package:portfolio/features/about/presentation/widgets/image_about.dart';

class AboutTablet extends StatelessWidget {
  const AboutTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadlineTitle(
          gradientText: context.local.about,
          text: ' ${context.local.me}',
        ),

        context.spacing.md.h,

        BioText(bio: context.local.bio),

        context.spacing.xxl64.h,

        const _ContentAbout(),

        context.spacing.xxl64.h,
        context.spacing.lg.h,

        const CardsAbout(),
      ],
    );
  }
}

class _ContentAbout extends StatelessWidget {
  const _ContentAbout();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 1140,
      child: Wrap(children: [ContentAbout(), ImageAbout()]),
    );
  }
}
