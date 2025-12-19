import 'package:flutter/widgets.dart';
import 'package:portfolio/l10n/app_localizations.dart';

extension DeviceExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  AppLocalizations get local => AppLocalizations.of(this)!;
}
