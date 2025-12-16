import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/l10n/app_localizations.dart';

class DashboardWeb extends StatelessWidget {
  const DashboardWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Column(
      children: [
        SizedBox(height: 48.sp),

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
      ],
    );
  }
}
