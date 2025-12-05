import 'package:flutter/widgets.dart';

class IconMediaModel {
  const IconMediaModel({required this.icon, required this.onTap});

  final String icon; // path to SVG or asset
  final VoidCallback onTap;
}
