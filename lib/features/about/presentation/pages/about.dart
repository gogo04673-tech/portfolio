import 'package:flutter/widgets.dart';
import 'package:portfolio/core/responsive/responsive_builder.dart';
import 'package:portfolio/features/about/presentation/layouts/about_desktop.dart';
import 'package:portfolio/features/about/presentation/layouts/about_mobile.dart';
import 'package:portfolio/features/about/presentation/layouts/about_tablet.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      mobile: AboutMobile(),
      tablet: AboutTablet(),
      web: AboutDesktop(),
    );
  }
}
