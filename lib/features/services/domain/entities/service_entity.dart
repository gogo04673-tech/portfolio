import 'package:flutter/widgets.dart';

class ServiceEntity {
  ServiceEntity({
    required this.title,
    required this.description,
    required this.image,
    this.onLearnMore,
  });

  final String title;
  final String description;
  final String image;
  final VoidCallback? onLearnMore;
}
