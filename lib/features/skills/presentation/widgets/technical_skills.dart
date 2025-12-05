import 'package:flutter/material.dart';
import 'package:portfolio/common/components/toggle_line_progress.dart';
import 'package:portfolio/core/config/assets/app_images.dart';

class TechnicalSkills extends StatelessWidget {
  const TechnicalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.28,
      child: const Column(
        children: [
          ToggleLineProgress(language: 'Flutter', value: 90),

          SizedBox(height: 50),

          ToggleLineProgress(language: 'Bloc', logo: AppImages.bloc, value: 95),

          SizedBox(height: 50),

          ToggleLineProgress(
            language: 'JavaScript',
            logo: AppImages.js,
            value: 80,
          ),

          SizedBox(height: 50),

          ToggleLineProgress(language: 'Node', logo: AppImages.node, value: 70),
        ],
      ),
    );
  }
}
