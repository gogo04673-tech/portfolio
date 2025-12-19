import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/appear_animation.dart';
import 'package:portfolio/core/responsive/responsive_builder.dart';
import 'package:portfolio/features/dashboard/presentation/layouts/dashboard_mobile.dart';
import 'package:portfolio/features/dashboard/presentation/layouts/dashboard_tablet.dart';
import 'package:portfolio/features/dashboard/presentation/layouts/dashboard_web.dart';
import 'package:portfolio/features/portfolio/presentation/pages/portfolio_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioPage(
      widget: AppearAnimation(
        child: ResponsiveBuilder(
          mobile: DashboardMobile(),
          tablet: DashboardTablet(),
          web: DashboardWeb(),
        ),
      ),
    );
  }
}
