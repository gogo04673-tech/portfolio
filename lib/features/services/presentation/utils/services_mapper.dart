import 'package:flutter/widgets.dart';
import 'package:portfolio/core/config/assets/app_icons.dart';
import 'package:portfolio/features/services/models/service_model.dart';

class ServicesMapper {
  static List<ServiceModel> map(BuildContext context) {
    return [
      ServiceModel(
        title: 'Mobile Development',
        icon: AppIcons.mobileDev,
        bio:
            'Mobile developer specializing in Flutter and cross-platform apps. Delivering clean UI and reliable performance.',
      ),
      ServiceModel(
        title: 'Web Development',
        icon: AppIcons.webDev,
        bio:
            'Web developer building modern, responsive web applications. Focused on performance, scalability, and clean code.',
      ),
      ServiceModel(
        title: 'Fully Responsive Apps',
        icon: AppIcons.responsive,
        bio:
            'Creating responsive applications for all screen sizes. Focused on usability, flexibility, and scalability.',
      ),
      ServiceModel(
        title: 'UI/UX Design',
        icon: AppIcons.design,
        bio:
            'Shaping meaningful digital experiences through design. Focused on users, details, and flow.',
      ),
      ServiceModel(
        title: 'Mobile App Design',
        icon: AppIcons.mobileDes,
        bio:
            'Mobile app designer focused on clean UI and smart UX.  Building experiences users enjoy and understand instantly.',
      ),
      ServiceModel(
        title: 'Brand Strategy',
        icon: AppIcons.brand,
        bio:
            'Developing clear brand strategies that align vision, values, and audience. Building consistent brands that communicate with purpose.',
      ),
    ];
  }
}
