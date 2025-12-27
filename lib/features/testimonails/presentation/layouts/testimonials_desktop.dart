import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/testimonails/presentation/widgets/testimonials_wrap.dart';

class TestimonialsDesktop extends StatelessWidget {
  const TestimonialsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.spacing.xxl64.h,
        const HeadlineTitle(gradientText: 'Test', text: 'imonials'),

        context.spacing.md.h,
        const BioText(
          bio:
              "Working with Mohamed was smooth and efficient. He understands responsive design deeply and translates UI designs into pixel-perfect layouts.",
        ),

        context.spacing.xxl.h,

        const TestimonialsWrap(),
      ],
    );
  }
}
