import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class AdaptiveLayout {
  static bool isWeb(BuildContext context) => kIsWeb;
  static bool isMobile(BuildContext context) =>
      !kIsWeb && Platform.isAndroid || Platform.isIOS;
}
