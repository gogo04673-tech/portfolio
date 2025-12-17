import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/dashboard/presentation/widgets/headline_title.dart';
import 'package:portfolio/l10n/app_localizations.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Column(
      children: [
        context.spacing.xxl.h,

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              local.hiImName("Mohammed"),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Container(
              width: 2,
              height: 22,
              color: const Color(0xFFFFFFFF).withValues(alpha: .2),
              margin: const EdgeInsets.symmetric(horizontal: 8),
            ),
            Text(
              local.basedOnCountry("Morocco"),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),

        context.spacing.xxl.h,

        HeadlineTitle(
          gradientText: local.creative,
          text: local.designAndDeveloper,
        ),

        context.spacing.xxl.h,

        SizedBox(
          width: 300,
          child: Text(
            local.bio,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
