import 'package:flutter/widgets.dart';
import 'package:portfolio/core/responsive/responsive_builder.dart';
import 'package:portfolio/features/services/presentation/layouts/services_desktop.dart';
import 'package:portfolio/features/services/presentation/layouts/services_mobile.dart';
import 'package:portfolio/features/services/presentation/layouts/services_tablet.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      mobile: ServicesMobile(),
      tablet: ServicesTablet(),
      web: ServicesDesktop(),
    );
  }
}
