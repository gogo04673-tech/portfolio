import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive_builder.dart';
import 'package:portfolio/features/dashboard/presentation/layouts/dashboard_mobile.dart';
import 'package:portfolio/features/dashboard/presentation/layouts/dashboard_tablet.dart';
import 'package:portfolio/features/dashboard/presentation/layouts/dashboard_web.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      mobile: DashboardMobile(),
      tablet: DashboardTablet(),
      web: DashboardWeb(),
    );
  }
}
