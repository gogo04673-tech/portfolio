import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/services/presentation/widgets/wrap_specialties.dart';

class ServicesDesktop extends StatelessWidget {
  const ServicesDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        context.spacing.xxl64.h,
        const HeadlineTitle(gradientText: 'Services', isMedium: true),
        const HeadlineTitle(gradientText: 'My', text: " Specialties"),

        context.spacing.xxl64.h,

        const WrapSpecialties(),
      ],
    );
  }
}
