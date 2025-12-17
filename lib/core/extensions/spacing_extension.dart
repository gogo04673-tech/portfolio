import 'package:flutter/widgets.dart';

extension SpacingExtension on double {
  SizedBox get h => SizedBox(height: this);
  SizedBox get w => SizedBox(width: this);
}
