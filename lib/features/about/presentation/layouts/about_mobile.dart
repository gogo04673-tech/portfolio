import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/extensions/device_extension.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/about/presentation/widgets/cards_about.dart';
import 'package:portfolio/features/about/presentation/widgets/content_about.dart';
import 'package:portfolio/features/about/presentation/widgets/image_about.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (context.spacing.xxl * 2).h,

        HeadlineTitle(
          gradientText: context.local.about,
          text: ' ${context.local.me}',
        ),

        context.spacing.sm.h,

        BioText(bio: context.local.bio),

        context.spacing.xxl64.h,

        const ContentAbout(),

        context.spacing.md.h,

        const ImageAbout(),

        context.spacing.md.h,

        const CardsAbout(),
      ],
    );
  }
}
