import 'package:portfolio/core/config/assets/app_icons.dart';

class ServiceModel {
  ServiceModel({
    required this.id,
    required this.titleKey,
    required this.bioKey,
    required this.icon,
  });

  final int id;
  final String titleKey;
  final String bioKey;
  final String icon;

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'] is int ? json['id'] : int.parse(json['id']),
      titleKey: json['titleKey'] as String,
      bioKey: json['bioKey'] as String,
      icon: '${AppIcons.basePath}/${json['icon']}.svg',
    );
  }
}
