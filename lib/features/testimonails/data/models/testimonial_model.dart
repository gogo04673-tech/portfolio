import 'package:portfolio/core/config/assets/app_images.dart';

class TestimonialModel {
  TestimonialModel({
    required this.id,
    required this.name,
    required this.bio,
    required this.image,
    required this.job,
  });

  final int id;
  final String name;
  final String bio;
  final String image;
  final String job;

  factory TestimonialModel.fromJson(Map<String, dynamic> json) {
    return TestimonialModel(
      id: json['id'] is int ? json['id'] : int.parse(json['id']),
      name: json['name'],
      bio: json['bio'],
      image: "${AppImages.basePath}/${json['image']}.svg",
      job: json['job'],
    );
  }
}
