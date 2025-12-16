import 'package:flutter/material.dart';

class OptionEntity {
  OptionEntity({
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  final String title;
  final bool isActive;
  final VoidCallback onTap;
}
