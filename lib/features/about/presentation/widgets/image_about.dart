import 'package:flutter/widgets.dart';
import 'package:portfolio/core/config/assets/app_images.dart';

class ImageAbout extends StatelessWidget {
  const ImageAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Image.asset(AppImages.aboutImg),
    );
  }
}
