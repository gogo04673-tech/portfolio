import 'package:portfolio/core/config/assets/app_images.dart';

class WorkModel {
  WorkModel({
    required this.id,
    required this.type,
    required this.titleKey,
    required this.bioKey,
    required this.background,
  });

  final int id;
  final String type;
  final String titleKey;
  final String bioKey;
  final String background;

  factory WorkModel.fromJson(Map<String, dynamic> json) {
    return WorkModel(
      id: json['id'] is int ? json['id'] : int.parse(json['id']),
      type: json['type'],
      titleKey: json['titleKey'],
      bioKey: json['bioKey'],
      background: "${AppImages.basePath}/${json['background']}.svg",
    );
  }
}
