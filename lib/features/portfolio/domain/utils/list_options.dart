import 'package:flutter/widgets.dart';
import 'package:portfolio/l10n/app_localizations.dart';

class LisSections {
  static List<String> list(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return [
      local.home,
      local.about,
      local.services,
      local.portfolio,
      local.testimonials,
    ];
  }
}
