import 'package:flutter/material.dart';
import 'package:portfolio/l10n/app_localizations.dart';

extension L10nExtension on BuildContext {
  String translate(String key) {
    final l10n = AppLocalizations.of(this)!;

    final map = {
      'mobile_dev': l10n.mobile_dev,
      'mobile_dev_bio': l10n.mobile_dev_bio,
      'web_dev': l10n.web_dev,
      'web_dev_bio': l10n.web_dev_bio,
      'ui_ux': l10n.ui_ux,
      'ui_ux_bio': l10n.ui_ux_bio,
      'fully_resp': l10n.fully_resp,
      'fully_resp_bio': l10n.fully_resp_bio,
      'resp_design': l10n.fully_resp,
      'resp_design_bio': l10n.fully_resp_bio,
      'brand_str': l10n.fully_resp,
      'brand_str_bio': l10n.fully_resp_bio,
      'spendly': l10n.spendly,
      'spendly_design': l10n.spendly,
      'spendly_bio': l10n.spendly_bio,
      "market_animals": l10n.market_animals,
      "market_animals_design": l10n.market_animals,
    };

    return map[key] ?? key;
  }
}
