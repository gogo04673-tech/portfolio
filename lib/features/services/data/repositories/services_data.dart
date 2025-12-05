import 'package:portfolio/core/config/assets/app_images.dart';
import 'package:portfolio/features/services/domain/entities/service_entity.dart';

final List<ServiceEntity> services = [
  ServiceEntity(
    title: "UI/UX Design",
    description:
        "Creating intuitive and engaging user interfaces that provide seamless experiences. I focus on usability, accessibility, and visual aesthetics to ensure users enjoy interacting with your product.",
    image: AppImages.coding,
  ),
  ServiceEntity(
    title: "Mobile Design",
    description:
        "Designing mobile applications with responsive layouts and smooth interactions. I aim to combine functionality and style to deliver apps that are user-friendly and visually appealing.",
    image: AppImages.phone,
  ),
  ServiceEntity(
    title: "App Design",
    description:
        "Crafting complete application designs that balance performance, usability, and modern aesthetics. I focus on both frontend experience and intuitive workflows for users across platforms.",
    image: AppImages.apple,
  ),
];
